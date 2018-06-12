defmodule Fib do
  alias Cache.Agent
  def compute(n) do
    case Agent.get(n) do
      nil ->
        result = compute(n-2) + compute(n-1)
        Agent.put(n, result)
        result
      result -> result
    end
  end
end
