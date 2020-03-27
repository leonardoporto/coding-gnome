defmodule Fibonacci do
  def calculate(pid, n) do
    case Cache.get(pid, n) do
      nil ->
        result = calculate(pid, n-1) + calculate(pid, n-2)
        Cache.put(pid, n, result)
        result
      val ->
        val
      end
  end

  def cache() do
    Cache.start(%{0 => 0, 1 => 1})
  end

end
