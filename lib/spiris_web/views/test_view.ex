defmodule SpirisWeb.TestView do
  use SpirisWeb, :view
  alias SpirisWeb.TestView

  def render("index.json", %{test: test}) do
    %{data: render_many(test, TestView, "test.json")}
  end

  def render("show.json", %{test: test}) do
    %{data: render_one(test, TestView, "test.json")}
  end

  def render("test.json", %{test: test}) do
    %{id: test.id,
      thingyone: test.thingyone,
      thingytwo: test.thingytwo}
  end
end
