defmodule TcpServerSupervisor do
  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    children = [
      %{
        id: TcpServer,
        start: { TcpServer, :start_link, [] }
      }
    ]
    IO.puts "starting"
    Supervisor.init(children, strategy: :one_for_one)
  end
end
