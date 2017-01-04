defmodule LoveLetterCardPrinceTest do
  use ExUnit.Case

  test "forces a player to discard a hand" do
    scores = %{1 => 2, 2 => 5, :deck => [3, 6]}
    choice = 1
    result = LoveLetter.Card.Prince.run(scores, choice)
    assert result == %{1 => 3, 2 => 5, :deck => [6]}
  end
end
