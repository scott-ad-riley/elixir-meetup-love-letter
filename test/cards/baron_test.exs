defmodule LoveLetterCardBaronTest do
  use ExUnit.Case

  test "current player has higher value" do
    scores = %{1 => 2, 2 => 5, 3 => 7}
    choice = {1, 2}
    result = LoveLetter.Card.Baron.run(scores, choice)
    assert result == %{2 => 5, 3 => 7}
  end

  test "target player has higher value" do
    scores = %{1 => 2, 2 => 5, 3 => 7}
    choice = {3, 2}
    result = LoveLetter.Card.Baron.run(scores, choice)
    assert result == %{1 => 2, 3 => 7}
  end

  test "neither player has higher value" do
    scores = %{1 => 2, 2 => 2, 3 => 7}
    choice = {1, 2}
    result = LoveLetter.Card.Baron.run(scores, choice)
    assert result == %{1 => 2, 2 => 2, 3 => 7}
  end

  test "requires a current player and a target" do
    assert LoveLetter.Card.requirements(3) == {:current, :target}
  end

end
