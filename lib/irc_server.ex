defmodule App do
  use Application

  def start(_type, _args) do
    IO.puts "starting irc server"
    TcpServerSupervisor.start_link(name: TcpServerSupervisor)
  end
end
