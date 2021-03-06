defmodule Hangman.Game do

  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used: MapSet.new(),
  )

  def new_game() do
    %Hangman.Game{
      letters: Dictionary.random_word |> String.codepoints
    }
  end

  def make_move(game = %{game_state: state}, _guess) when state in [:won, :lost] do
    {game, tally(game)}
  end

  def make(game, guess) do
    accept_move(game, guess, MapSet.member?(game.used, guess))

  end

  def accept_move(game, guess, true) do
  end

  def accept_move(game, guess, false) do
  end

  def tally(game) do
    123
  end
end
