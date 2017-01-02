defmodule LoveLetterPlayerTest do
  use ExUnit.Case

  test "decide on winning card with equal cards" do
    assert LoveLetter.Player.handle_decision(1, 1, 1) == 1
  end

  test "decide on winning when cards are different" do
    assert LoveLetter.Player.handle_decision(5, 3, 5) == 5
  end

  # need a test to check that we recurse if an invalid value is given
end
