defmodule LoveLetter.Deck do

  @cards [1, 1, 1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 7, 8]

  def shuffle_deck do
    Enum.shuffle(@cards)
  end

  def draw_card([]), do: :empty_deck

  def draw_card([head | tail]) do
    {head, tail}
  end
end
