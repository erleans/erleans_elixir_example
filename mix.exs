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

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ErleansElixirExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:erleans, path: "../erleans"}
    ]
  end
end
