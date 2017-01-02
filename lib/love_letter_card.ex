defmodule LoveLetter.Card do

  def play(1, _scores, _action) do
    # this will call out to the guard module
    # it will also print out to the console asking the player to make decisions
    # it will print out if they were successful (and who they eliminated etc.)
    # it will eventually return the new choices map (for our game runner)
  end

  def play(2, _scores, _action) do
    # priest has no logic/changes to game state
  end

  def play(3, _scores, _action) do
    # calls out to baron module and handles outputting info to the console
  end

end
