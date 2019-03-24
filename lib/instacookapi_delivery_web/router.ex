defmodule InstacookapiDeliveryWeb.Router do
  use InstacookapiDeliveryWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InstacookapiDeliveryWeb do
    pipe_through :api
  end
end
