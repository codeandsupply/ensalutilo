defmodule Ensalutilo.Registration do
  use Ecto.Model

  schema "registrations" do
    field :user_id, :string
    field :created_at, :datetime, default: Ecto.DateTime.local
    field :updated_at, :datetime, default: Ecto.DateTime.local
  end
end
