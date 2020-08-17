defmodule LilibotWeb.Dominaria do
  use LilibotWeb, :controller

  require Logger

  def raise(conn, params) do
    Logger.info("minha conn -> #{conn}")
    Logger.info("meus params -> #{params}")

    text(conn, Lilictocat.get_oldest_pull_request_without_review())
  end
end
