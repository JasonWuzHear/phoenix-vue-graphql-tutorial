defmodule AppnameWeb.PageController do
  use AppnameWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
