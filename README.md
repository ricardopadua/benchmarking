# LeruaiteBenchmarking

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `leruaite_benchmarking` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:leruaite_benchmarking, "~> 0.1.0"}
  ]
end
```


```elixir
   Benchee.run(%{
    "1000-seq-fibonacci" => fn -> LeruaiteBenchmarking.list(1000) end,
    "10_000-seq-fibonacci" => fn -> LeruaiteBenchmarking.list(10_000) end,
  },
  time: 10, 
  warmup: 10, 
  formatters: [
    Benchee.Formatters.HTML, 
    Benchee.Formatters.Console
    ]
  )
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/leruaite_benchmarking>.

