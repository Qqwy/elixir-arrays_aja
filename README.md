# ArraysAja

[![Hex Version](https://img.shields.io/hexpm/v/arrays_aja.svg)](https://hex.pm/packages/arrays_aja)
[![Documentation](https://img.shields.io/badge/hexdocs-latest-blue.svg)](https://hexdocs.pm/arrays_aja/index.html)

Provides an [Arrays](https://github.com/Qqwy/elixir-arrays) implementation for [Aja](https://github.com/sabiwara/aja)'s `Vector` datatype, which is an implementation of a 'Hickey Trie' Vector written in Elixir.

## Performance

Aja's implementation is _fast_. As can be seen from below benchmarking graphs, `A.Vector` beats the other alternative datatypes outright in most common tasks:

- Random reads are much faster regardless of array size. (and remain super fast even for very large arrays!)
- Random updates are slightly (~20%) slower than using an MapArray or ErlangArray for arrays with less than ~2^1 elements. After this, A.Vector is often much faster. (I do not yet know what causes the odd spike at 2^17 where A.Vector is _super_ fast.)
- Appending a single element is similarly performant to the other implementations. At higher sizes, it keeps up with ErlangArray (where MapArray becomes much slower.)
- Concatenating is where `A.Vector` also really shines: It is roughly 5x(!) faster than ErlangArray and MapArray, regardless of collection size. It is only outclassed by plain lists (which are again ~5x faster for concatenation, but much (i.e. asymptotically) slower for all of the other three operations).


![random_read](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/random_access_graph.png)
![random_read](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/random_access_graph_log.png)
![random_update](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/random_element_update_graph.png)
![random_update](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/random_element_update_graph_log.png)
![append](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/append_graph.png)
![append](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/append_graph_log.png)
![append](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/append_graph_log_focus.png)
![concat](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/concat_graph.png)
![concat](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/concat_graph_log.png)
![concat](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/concat_graph_log_focus.png)
![concat](https://github.com/Qqwy/elixir-arrays_aja/blob/main/benchmark_runs/concat_graph_loglog.png)

## Installation

ArraysAja is [available in Hex](https://hex.pm/docs/publish), and can be installed
by adding `arrays_aja` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:arrays_aja, "~> 0.1.0"}
  ]
end
```

Documentation can be found at [https://hexdocs.pm/arrays_aja](https://hexdocs.pm/arrays_aja).

