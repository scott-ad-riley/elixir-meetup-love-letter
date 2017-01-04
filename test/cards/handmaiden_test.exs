defmodule LoveLetterCardHandmaidenTest do
  use ExUnit.Case

  test "empty list of immunities" do
    scores = %{1 => 2, 2 => 5, 3 => 7, :immune => []}
    choice = 1
    result = LoveLetter.Card.Handmaiden.run(scores, choice)
    assert result == %{1 => 2, 2 => 5, 3 => 7, :immune => [1]}
  end

  test "existing list of immunities" do
    scores = %{1 => 2, 2 => 5, 3 => 7, :immune => [2]}
    choice = 1
    result = LoveLetter.Card.Handmaiden.run(scores, choice)
    assert result == %{1 => 2, 2 => 5, 3 => 7, :immune => [1, 2]}
  end

  test "requires a current player" do
    assert LoveLetter.Card.requirements(4) == {:current}
  end

end
