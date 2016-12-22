defmodule LoveLetter.Player do

  def make_decision(card_one, card_two) do
    cond do
      card_one > card_two -> card_one
      card_one < card_two -> card_two
      :else -> card_one
    end
  end
end
