defmodule SpirisWeb.PageController do
  use SpirisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
