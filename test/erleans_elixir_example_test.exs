defmodule ErleansElixirExampleTest do
  use ExUnit.Case
  doctest ErleansElixirExample

  setup do
    on_exit(fn ->
      repo = :postgres
      ErleansProviderEcto.PostgresRepo.put_dynamic_repo(repo)
      ErleansProviderEcto.PostgresRepo.delete_all(ErleansProviderEcto.Grain)
      :ok
    end)
  end

  test "test incrementing the counter" do
    ref = Erleans.get_grain(ErleansElixirExample, "grain")
    assert 0 = ErleansElixirExample.get(ref)

    ErleansElixirExample.increment(ref)

    assert 1 = ErleansElixirExample.get(ref)
  end
end
