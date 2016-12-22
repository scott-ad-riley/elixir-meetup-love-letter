defmodule LoveLetter do

  @cards [1, 1, 1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 7, 8]

  def shuffle_deck do
    Enum.shuffle(@cards)
  end

  def draw_card([]), do: :empty_deck

  def draw_card(deck) do
    [head | tail] = deck
    {head, tail}
  end
end
