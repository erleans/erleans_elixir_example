defmodule ErleansElixirExample do
  use Erleans.Grain,
    placement: :prefer_local,
    provider: :in_memory,
    state: %{:counter => 0}

  def get(ref) do
    :erleans_grain.call(ref, :get)
  end

  def increment(ref) do
    :erleans_grain.cast(ref, :increment)
  end

  def handle_call(:get, from, state = %{:counter => counter}) do
    {:ok, state, [{:reply, from, counter}]}
  end

  def handle_cast(:increment, state = %{:counter => counter}) do
    new_state = %{state | :counter => counter + 1}
    {:ok, new_state, [:save_state]}
  end
end
