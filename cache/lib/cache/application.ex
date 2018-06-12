defmodule Cache.Application do
  use Application

  def start(_type, _args) do

    import Supervisor.Spec

    children = [
      worker(Cache.Agent, [])
    ]

    options = [
      name: Cache.Supervisor,
      strategy: :one_for_one,
    ]

    Supervisor.start_link(children, options)
  end
end
