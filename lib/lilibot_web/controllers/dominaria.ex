defmodule LilibotWeb.Dominaria do
  use LilibotWeb, :controller

  require Logger

  def raise(conn, params) do
    params
    |> Map.fetch("response_url")
    |> resposta()

    text(conn, "realizando a pesquisa, em breve você receberá a resposta nesse mesmo chat")
  end

  def resposta(response_url) do
    IO.inspect(response_url, label: "message to:")
  end
end
