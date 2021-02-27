defmodule ElixirChinaWeb.PageController do
  use ElixirChinaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
