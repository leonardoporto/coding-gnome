defmodule Hangman.Game do

  defstruct( turns_left: 7, game_state: :initializing, letters: []  )

  def new_game() do
    %Hangman.Game{
      letters: Dictionary.random_word |> String.codepoints
    }
  end

  def make_mode(game, guess) do

  end

end
