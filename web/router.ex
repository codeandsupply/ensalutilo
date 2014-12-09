defmodule Ensalutilo.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", Ensalutilo do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/registration", Ensalutilo do
    get "/", RegistrationController, :index
    post "/register", RegistrationController, :register
    get "/all", RegistrationController, :registrations
  end
end
