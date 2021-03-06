# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :haha, HaHaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "q2u9GN950S11zryPlPehHDnd6hRVHf74FWmCWmJqrq7586ms1LSgoJv4EaROmu0S",
  render_errors: [view: HaHaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HaHa.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :mime, :types, %{
      "application/openc2-cmd+json;version=1.0" => ["json"],
      "application/openc2-rsp+json;version=1.0" => ["json"]
    }

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
