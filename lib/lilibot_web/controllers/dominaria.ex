defmodule LilibotWeb.Dominaria do
  use LilibotWeb, :controller

  def raise(conn, _params) do
    text(conn, Lilictocat.get_oldest_pull_request_without_review())
  end
end
