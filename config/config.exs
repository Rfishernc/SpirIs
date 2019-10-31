# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :spiris,
  ecto_repos: [Spiris.Repo]

# Configures the endpoint
config :spiris, SpirisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5r0kHukEb+n8zmvGx8xk+V8iALdC20LEeWX+/lvLkHreekjb7Eaim3K9NNim1YXf",
  render_errors: [view: SpirisWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Spiris.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
