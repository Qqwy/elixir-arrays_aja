defmodule ArraysAja.MixProject do
  use Mix.Project
  @source_url "https://github.com/Qqwy/elixir-arrays_aja"

  def project do
    [
      app: :arrays_aja,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "ArraysAja",
      description: description(),
      source_url: @source_url,
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:arrays, "~> 2.0"},
      {:aja, "~> 0.5.3"},

      {:ex_doc, "~> 0.23", only: :dev, runtime: false, override: true},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.13", only: [:test]},

      {:benchee, "~> 1.0", only: [:dev]},
      {:benchee_csv, "~> 1.0", only: [:dev]},
      {:benchee_markdown, "~> 0.2", only: [:dev]},
      {:benchee_html, "~> 1.0", only: [:dev]},

      {:gnuplot, "~> 1.20", only: [:dev]},
      {:csv, "~> 2.4", only: [:dev]},
      {:erlang_pmp, "~> 0.1.1", only: [:dev]}
    ]
  end

  defp description do
    """
    An `Arrays`  implementation for `Aja`'s `Vector` datatype, which is an implementation of a 'Hickey Trie' Vector written completely in Elixir.
    This implementation very efficient for most array-based operations.
    """
  end

  defp package() do
    [
      name: :arrays_aja,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Qqwy/Wiebe-Marten Wijnja"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs() do
    [
      main: "readme",
      extras: ["README.md", "DOCUMENTATION.md"]
    ]
  end
end
