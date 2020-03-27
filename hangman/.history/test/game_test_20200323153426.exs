defmodule GameTest do
  use ExUnit.Case

  alias Hangman.Game

  test "new_game returns structure" do
    game = Game.new_game()
    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
    assert game.letters |> Enum.join("") |> String.downcase(:ascii) == game.letters |> Enum.join("")
  end

  test "state isn't changed for :won game" do
    game = Game.new_game
            |> Map.put(game, :game_state, :won)

    {new_game, _} = Game.make_move(game, "x")

    assert new_game == game
  end
end
