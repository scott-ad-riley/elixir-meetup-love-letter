defmodule LoveLetter.Card do
  alias LoveLetter.Card.{Guard, Priest, Baron, Handmaiden, Prince, King}
  # this are our interfaces to the code responsible for executing cards

  # guard
  def play(1, _scores, _action) do

  end

  def play(2, _scores, _action) do
    # priest has no logic/changes to game state
  end

  def play(3, _scores, _action) do
    # calls out to baron module and handles outputting info to the console
  end

  def requirements(int) do
    %{
      1 => &Guard.requirements/0,
      2 => &Priest.requirements/0,
      3 => &Baron.requirements/0,
      4 => &Handmaiden.requirements/0,
      5 => &Prince.requirements/0,
      6 => &King.requirements/0
    }[int].()

  end

end
