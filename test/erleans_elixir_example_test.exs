defmodule ErleansElixirExampleTest do
  use ExUnit.Case
  doctest ErleansElixirExample

  test "greets the world" do
    assert ErleansElixirExample.hello() == :world
  end
end
