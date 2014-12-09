defmodule Ensalutilo.Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://localhost/ensalutilo"
  end

  def priv do
    app_dir(:ensalutilo, "priv/repo")
  end
end
