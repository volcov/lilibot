# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :lilibot, LilibotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n1RKEKMia9wL1V/YjKKw6CHZsV+Rq33I58vW+hsUvnL82m/6mPOViBB44B1aZue3",
  render_errors: [view: LilibotWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Lilibot.PubSub,
  live_view: [signing_salt: "TopuQUAR"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :lilictocat, github_access_token: System.get_env("LILICTOCAT_TOKEN")
config :tentacat, :deserialization_options, keys: :atoms

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
