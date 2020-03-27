defmodule Dictionary do
  def word_list do
    contents = File.read!("assets/wordd.txt")
    list = String.split(contents, ~r/\n/)
  end
end
