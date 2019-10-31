defmodule Spiris.Test do
  use Ecto.Schema

  import Ecto.Changeset

  schema "test" do
    field :thingyone, :string
    field :thingytwo, :string

    # timestamps()
  end

  @doc false
  def changeset(spiris, attrs) do
    spiris
    |> cast(attrs, [:thingyone, :thingytwo])
    |> validate_required([:thingyone, :thingytwo])
  end
end