defmodule LilibotWeb.Dominaria do
  use LilibotWeb, :controller

  require Logger

  def raise(conn, params) do
    params
    |> Map.fetch("response_url")
    |> resposta()

    text(conn, "realizando a pesquisa, em breve você receberá a resposta nesse mesmo chat")
  end

  def resposta({:ok, response_url}) do
    pull_request = Lilictocat.get_oldest_pull_request_without_review()
    HTTPoison.post(response_url, "{\"body\": \"test\"}")
  end
end
