# Erleans Elixir Example

![](https://github.com/erleans/erleans_elixir_example/workflows/Erleans%20Elixir%20Example%20tests/badge.svg)

Simple Grain to show using Erleans from Elixir along with Ecto and Postgres.

``` elixir
$ mix deps.get
$ mix compile
$ iex --sname a@localhost -S mix

iex(a@localhost)1> ref = Erleans.get_grain(ErleansElixirExample, "somename")
...
iex(a@localhost)2> ErleansElixirExample.get(ref)
0
iex(a@localhost)3> ErleansElixirExample.increment(ref)
:ok
iex(a@localhost)4> ErleansElixirExample.get(ref)
1
```

