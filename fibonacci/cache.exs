defmodule Cache do
  def start(state) do
    Agent.start_link(fn -> state end)
  end

  def put(pid, number, result) do
    Agent.update(pid, &(Map.put(&1, number, result)))
  end

  def get(pid, number) do
    Agent.get(pid, &(Map.get(&1, number)))
  end
  
end
