defmodule Chart do
  # Based on benchmark plotting code
  # written by Saša Jurić
  def plot(data, opts) do
    Application.put_env(:gnuplot, :timeout, {0, :ms})

    titles = Enum.map(data, fn {title, _} -> to_string(title) end)
    colors = ~w/black dark-green blue dark-khaki dark-violet gray40/
    pts = [4, 5, 6, 7, 12, 13]
    dts = [1, 2, 3, 4, 5, 6]

    plots =
      [titles, colors, pts, dts]
      |> Enum.zip()
      |> Enum.map(fn {title, color, pt, dt} ->
      [
        "-",
        :title,
        title,
        # :smooth,
        # :acsplines,
        :with,
        :linespoints,
        # :pn,
        # 5,
        :lc,
        :rgb,
        color,
        :dt,
        dt,
        :pt,
        pt,
        :ps,
        0.5
      ]
    end)

      Gnuplot.plot(
        Keyword.get(opts, :commands, []) ++ [[:set, :key, :left, :top], Gnuplot.plots(plots)],
        Enum.map(
          data,
          fn {_title, points} -> Enum.map(points, &Tuple.to_list/1) end
        )
      )
  end

  def plot_from_csv_raw(filepath, opts) do
    filepath
    |> Path.expand()
    |> File.stream!
    |> CSV.decode!(headers: true)
    |> Enum.group_by(&(escape_underscores(&1["Name"])), fn row ->
      {x, " elements"} = Integer.parse(row["Input"])
      # x = String.to_integer(row["Input"])
      y = 1 / String.to_float(row["Iterations per Second"])
      {x, y}
    end
    )
    |> Enum.map(fn {k, v} -> {k, Enum.sort(v)} end)
    |> Enum.into(%{})
    |> plot(opts)
  end

  defp escape_underscores(string) do
    string
    |> String.replace("_", "\\\\\\_")
  end

  def plot_from_csv(filepath, title, xlabel, ylabel) do
    plot_from_csv_raw(filepath, commands: [
          [:set, :title, title],
          [:set, :xlabel, xlabel],
          [:set, :ylabel, ylabel],
          [:set, :grid, :xtics],
          [:set, :grid, :ytics],
          [:set, :format, :x, "%.0s%c"],
          [:set, :format, :y, "%.0s%cs"],
          [:set, :logscale, :x, 10],
          [:set, :logscale, :y, 10],
          [:set, :term, :svg],
          [:set, :output, Path.expand(String.replace_suffix(filepath, ".csv", ".svg"))],
        ])
  end
end



Chart.plot_from_csv("benchmark_runs/concat.csv", "Concatenate two equally-sized containers", "No. elements", "Average running time")
Chart.plot_from_csv("benchmark_runs/random_access.csv", "Reading an element at a random index", "No. elements", "Average running time")
Chart.plot_from_csv("benchmark_runs/random_update.csv", "Updating an element at a random index", "No. elements", "Average running time")
Chart.plot_from_csv("benchmark_runs/append.csv", "Appending an element", "No. elements", "Average running time")
