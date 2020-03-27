defmodule Dictionary do
  def word_list do
    contents = File.read!("assets/words.txt")
    list = String.split(contents, ~r/\n/)
    list
  end
end
