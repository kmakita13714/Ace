defmodule HelloHTTP2.WWW do
  use Ace.HTTP2.Stream.RaxxHandler
  alias Raxx.Response
  require Raxx.Static

  Raxx.Static.serve_dir("./public")

  def handle_request(_, _) do
    Response.ok("Hello, World!", [{"content-length", "13"}])
  end
end
