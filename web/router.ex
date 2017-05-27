defmodule Trello.Router do
  use Trello.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Trello do
    pipe_through :api
  end
end
