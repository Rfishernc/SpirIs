defmodule SpirisWeb.TestController do
  use SpirisWeb, :controller

  alias Spiris.Connections.Test
  alias Spiris.SpirisConnections

  action_fallback SprisWeb.FallbackController

  def index(conn, _params) do
    test = SpirisConnections.list_test()
    render(conn, "index.json", test: test)
  end

  def create(conn, test_params) do
    with {:ok, %Test{} = test} <- SpirisConnections.create_test(test_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.test_path(conn, :show, test))
      |> render("show.json", test: test)
    end
  end

  def show(conn, %{"id" => id}) do
    test = SpirisConnections.get_test!(id)
    render(conn, "show.json", test: test)
  end

  def update(conn, %{"id" => id} = test_params) do
    test = SpirisConnections.get_test!(id)

    with {:ok, %Test{} = test} <- SpirisConnections.update_test(test, test_params) do
      render(conn, "show.json", test: test)
    end
  end

  def delete(conn, %{"id" => id}) do
    test = SpirisConnections.get_test!(id)

    with {:ok, %Test{}} <- SpirisConnections.delete_test(test) do
      send_resp(conn, :no_content, "")
    end
  end
end
