defmodule Dictionary do
  def word_list do
    contents = File.read!("assets/word.txt")
    list = String.split(contents, ~r/\n/)
    list
  end
end
