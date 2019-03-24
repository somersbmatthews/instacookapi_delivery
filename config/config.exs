# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :instacookapi_delivery,
  ecto_repos: [InstacookapiDelivery.Repo]

# Configures the endpoint
config :instacookapi_delivery, InstacookapiDeliveryWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CtyNFVvVj2PTscIR/5WwzHz5/1ffdu3aGv51RVilWpZiu7Pt49c0UDQ1T7F0o4Fc",
  render_errors: [view: InstacookapiDeliveryWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: InstacookapiDelivery.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
