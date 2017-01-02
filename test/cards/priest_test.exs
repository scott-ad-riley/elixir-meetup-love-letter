defmodule LoveLetterCardPriestTest do
  use ExUnit.Case

  test "does not change the game state" do
    scores = %{1 => 2, 2 => 5, 3 => 7}
    choice = 3
    result = LoveLetter.Card.Priest.run(scores, choice)
    assert result == scores
  end

end
