defmodule Hangman do

  def hello do
    a = Dictionary.random_word()
    IO.puts a
    IO.puts Inflex.pluralize(a)
  end
end
