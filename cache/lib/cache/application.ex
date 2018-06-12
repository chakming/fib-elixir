defmodule Cache.Application do
  use Application

  def start(_type, _args) do
    Cache.Agent.start_link()
  end
end
