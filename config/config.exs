# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixir_china,
  ecto_repos: [ElixirChina.Repo]

# Configures the endpoint
config :elixir_china, ElixirChinaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gm823zBzvxa3BimHIqfAv42IkNsxqlvrGSUzC3vSJkknCufxiJt4+QICJG7yuMvm",
  render_errors: [view: ElixirChinaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ElixirChina.PubSub,
  live_view: [signing_salt: "/BEqSTQ1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
