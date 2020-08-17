defmodule LilibotWeb.Dominaria do
  use LilibotWeb, :controller

  require Logger

  def raise(conn, params) do
    IO.inspect(params, label: "veio nos parametros")

    text(conn, Lilictocat.get_oldest_pull_request_without_review())
  end
end
