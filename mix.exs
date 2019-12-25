defmodule ErleansElixirExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :erleans_elixir_example,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ErleansElixirExample.Application, []}
    ]
  end

  defp deps do
    [
      {:postgrex, "~> 0.15.3"},
      {:ecto_sql, "~> 3.3.2"},
      {:erleans_provider_ecto, github: "erleans/erleans_provider_ecto"},
      {:erleans, github: "erleans/erleans"}
      # {:erleans_provider_ecto, path: "../erleans_provider_ecto"},
      # {:erleans, path: "../erleans"}
    ]
  end
end
