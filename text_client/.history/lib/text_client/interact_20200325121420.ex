defmodule TextClient.Interact do

  defstruct (
    game_service: nil,
    tally: nil,
    guessed: ""
  )
  def start() do
    Hangman.new_game()
  end

  def play(state) do
    play(state)
  end
end
