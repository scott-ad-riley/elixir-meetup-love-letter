defmodule LoveLetterCardGuardTest do
  use ExUnit.Case

  test "guess correctly" do
    scores = %{1 => 2, 2 => 5, 3 => 7}
    choice = {2, 5}
    result = LoveLetter.Card.Guard.run(scores, choice)
    assert result == %{1 => 2, 3 => 7}
  end

  test "guess incorrectly" do
    scores = %{1 => 2, 2 => 5, 3 => 7}
    choice = {2, 4}
    result = LoveLetter.Card.Guard.run(scores, choice)
    assert result == %{1 => 2, 2 => 5, 3 => 7}
  end
end
