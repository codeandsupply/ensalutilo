defmodule Ensalutilo.RegistrationController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def register(conn, %{"name" => name}) do
    create_registration(name)
    registrations = Ensalutilo.Repo.all Ensalutilo.Registration
    render conn, "registrations.html", registrations: registrations
  end

  def registrations(conn, _params) do
    registrations = Ensalutilo.Repo.all Ensalutilo.Registration
    render conn, "registrations.html", registrations: registrations
  end

  def create_registration(name) do
    registration = %Ensalutilo.Registration{user_id: name}
    Ensalutilo.Repo.insert registration
  end
end
