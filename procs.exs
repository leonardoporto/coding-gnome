defmodule Procs do
  def greeter(count) do
    receive do
      {:add, n} -> 
        greeter(count+n)
      {:reset} ->
        greeter(0)
      {:boom, reason} ->
        exit(reason)
      msg ->
        IO.puts "[#{count}]: #{msg}"
        greeter(count)
    end
  end 
end
