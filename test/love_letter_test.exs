defmodule LoveLetterTest do
  use ExUnit.Case
  doctest LoveLetter

  test "shuffle a deck" do
    shuffled_deck = LoveLetter.shuffle_deck
    assert Enum.count(shuffled_deck) == 16
  end

  test "draw from a deck" do
    deck = LoveLetter.shuffle_deck
    {_, deck} = LoveLetter.draw_card(deck)
    assert Enum.count(deck) == 15
  end

  test "draw from empty deck" do
    assert LoveLetter.draw_card([]) == :empty_deck
  end
end
