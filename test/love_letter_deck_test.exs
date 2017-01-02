defmodule LoveLetterDeckTest do
  use ExUnit.Case

  test "shuffle a deck" do
    shuffled_deck = LoveLetter.Deck.shuffle_deck
    assert Enum.count(shuffled_deck) == 16
  end

  test "draw from a deck" do
    deck = LoveLetter.Deck.shuffle_deck
    {_, deck} = LoveLetter.Deck.draw_card(deck)
    assert Enum.count(deck) == 15
  end

  test "draw from empty deck" do
    assert LoveLetter.Deck.draw_card([]) == :empty_deck
  end
end
