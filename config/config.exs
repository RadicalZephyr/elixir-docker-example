# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :debian,
  ecto_repos: [Debian.Repo]

config :debian, Debian.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  hostname: "db",
  pool_size: 10

# Configures the endpoint
config :debian, DebianWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U0gMeQyLNp48vO9B/z0mHlq9EqtnquRzlwdr1Z5AT0/3C66vTNn5gNfC2+njRQjp",
  render_errors: [view: DebianWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Debian.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
