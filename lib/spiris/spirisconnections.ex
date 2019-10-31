defmodule Spiris.SpirisConnections do
  @moduledoc """
  """

  import Ecto.Query, warn: false

  alias Spiris.Repo
  alias Spiris.Test

  # test

  def list_test do
    Repo.all(Test)
  end

  def get_test!(id), do: Repo.get!(Test, id)

  def create_test(attrs \\ %{}) do
    %Test{}
    |> Test.changeset(attrs)
    |> Repo.insert()
  end

  def change_test(%Test{} = test) do
    Test.changeset(test, %{})
  end

  def update_test(%Test{} = test, attrs) do
    test
    |> Test.changeset(attrs)
    |> Repo.update()
  end

  def delete_test(%Test{} = test) do
    Repo.delete(test)
  end
end
