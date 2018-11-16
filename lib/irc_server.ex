defmodule App do
  use Application
  @moduledoc """
  Documentation for IRC_SERVER.
  """

  @doc """
  Hello world.

  ## Examples

      iex> IRC_SERVER.hello()
      :world

  """
  def hello do
    IO.puts :world
  end

  def children() do
    [
      %{
        id: TcpServer,
        start: { TcpServer, :start_link, [] }
      }
    ]
  end

  def irc_supervisor do

  end

  def start(_type, _args) do
    IO.puts "starting"
    Supervisor.start_link(children(), strategy: :one_for_one)
  end
end
