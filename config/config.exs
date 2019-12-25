import Config

config :erleans,
  providers: %{
    :in_memory => %{:module => :erleans_provider_ets, :args => %{}},
    :postgres => %{
      :module => ErleansProviderEcto.Postgres,
      :args => [
        {:database, "testdb"},
        {:username, "test"},
        {:hostname, "localhost"}
      ]
    }
  },
  default_provider: :postgres

config :lasp,
  membership: true,
  storage_backend: :lasp_ets_storage_backend,
  mode: :delta_based,
  delta_interval: 1000

config :plumtree,
  broadcast_exchange_timer: 60000,
  broadcast_mods: [:lasp_plumtree_backend]

config :partisan,
  peer_port: 10200,
  pid_encoding: false,
  partisan_peer_service_manager: :partisan_default_peer_service_manager
