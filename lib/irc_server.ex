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

  def irc_supervisor do

  end

  def start(_type, _args) do
    IO.puts "starting"
    Task.start(fn -> :timer.sleep(1000); IO.puts("done sleeping") end)
  end
end
