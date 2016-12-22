defmodule LoveLetterPlayerTest do
  use ExUnit.Case

  test "decide on winning card with equal cards" do
    assert LoveLetter.Player.make_decision(1, 1) == 1
  end

  test "decide on winning card when first is higher" do
    assert LoveLetter.Player.make_decision(5, 3) == 5
  end

  test "decide on winning card when second is higher" do
    assert LoveLetter.Player.make_decision(3, 6) == 6
  end
end
