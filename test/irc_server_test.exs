defmodule IRC_SERVERTest do
  use ExUnit.Case
  doctest IRC_SERVER

  test "greets the world" do
    assert IRC_SERVER.hello() == :world
  end
end
