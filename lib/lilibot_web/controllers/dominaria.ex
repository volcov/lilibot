defmodule LilibotWeb.Dominaria do
  use LilibotWeb, :controller

  require Logger

  def raise(conn, params) do
    response_url = Map.fetch(params, "response_url")
    spawn(fn -> resposta(response_url) end)
    text(conn, "realizando a pesquisa, em breve você receberá a resposta nesse mesmo chat")
  end

  def shallow_raise(conn, params) do
    response_url = Map.fetch(params, "response_url")
    spawn(fn -> resposta(response_url, ignore_archived: true) end)
    text(conn, "realizando a pesquisa, em breve você receberá a resposta nesse mesmo chat")
  end

  def resposta({:ok, response_url}, options \\ []) do
    pull_request =
      Lilictocat.get_oldest_pull_request_without_review(options)
      |> IO.inspect(label: "pull request link -> ")

    HTTPoison.post(response_url, "{\"text\": \"#{pull_request}\"}")
  end
end
