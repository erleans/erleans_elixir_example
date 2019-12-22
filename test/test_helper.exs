ExUnit.start()

Application.ensure_all_started(:erleans_elixir_example)

priv = Application.app_dir(:erleans_provider_ecto, "priv")
Ecto.Migrator.run(
  ErleansProviderEcto.PostgresRepo,
  Path.join(priv, "postgres_repo/migrations"),
  :up,
  dynamic_repo: :postgres,
  all: true
)
