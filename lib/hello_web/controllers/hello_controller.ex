defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  # def show(conn, %{"messenger" => messenger}) do
  #   html(conn,"""
  #     <html>
  #       <head>
  #         <title>Passing a Messenger</title>
  #       </head>
  #       <body>
  #         <p>From Messenger #{messenger}</p>
  #       </body>
  #     </html>
  #   """)
  # end
  # def show(conn, %{"messenger" => messenger}) do
  #   json(conn, %{id: messenger})
  # end
  # def show(conn, %{"messenger" => messenger}) do
  #   text(conn, "From messenger #{messenger}")
  # end
  def show(conn, %{"messenger" => messenger, "locale" => locale}) do
    IO.puts locale
    render(conn, "show.html", messenger: messenger)
  end
end

