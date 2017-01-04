defmodule LoveLetter.Card.Priest do

  def run(scores, _target) do
    # cannot test anything here - the priest has no effect on the game itself
    # how do we tell the player the value of X card?
    scores
  end

  def requirements, do: {:target}

end
