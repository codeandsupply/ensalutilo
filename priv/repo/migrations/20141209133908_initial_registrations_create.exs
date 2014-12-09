defmodule Ensalutilo.Repo.Migrations.InitialRegistrationsCreate do
  use Ecto.Migration

  def up do
    "CREATE TABLE registrations( \
      id serial primary key, \
      user_id varchar(255), \
      created_at timestamp, \
      updated_at timestamp)"
  end

  def down do
    "DROP TABLE registrations"
  end
end
