defmodule LoveLetterCardKingTest do
  use ExUnit.Case

  test "causes two players to swap hands" do
    scores = %{1 => 2, 2 => 5, 3 => 7}
    choice = {1, 3}
    result = LoveLetter.Card.King.run(scores, choice)
    assert result == %{1 => 7, 2 => 5, 3 => 2}
  end

  test "requires a current player and a target" do
    assert LoveLetter.Card.requirements(6) == {:current, :target}
  end

end
