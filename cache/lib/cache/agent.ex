defmodule Cache.Agent do
  @me __MODULE__
  @default %{0 => 0, 1 => 1}

  def start_link do
    Agent.start_link(fn -> @default end, name: @me)
  end

  def get(key) do
    Agent.get(@me, &Map.get(&1, key))
  end

  def put(key, value) do
    Agent.update(@me, &Map.put(&1, key, value))
  end
end
