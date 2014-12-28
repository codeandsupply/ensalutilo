defmodule Ensalutilo.Registration do
  use Ecto.Model

  schema "registrations" do
    field :user_id, :string
    field :created_at, :datetime, default: Ecto.DateTime.local
    field :updated_at, :datetime, default: Ecto.DateTime.local
  end
end

defmodule Ensalutilo.RegistrationQuery do
  import Ecto.Query

  def by_user(user_id) do
    query = from r in Ensalutilo.Registration,
          where: r.user_id == ^user_id,
         select: r
    Ensalutilo.Repo.all(query)
  end
end
