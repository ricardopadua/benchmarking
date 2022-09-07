defmodule LeruaiteWeb.PageController do
  use LeruaiteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
