defmodule LoveLetter.Player do

  def handle_decision(card_one, card_two, choice) do
    # How to remove terminal interaction from here elegantly?
    cond do
      choice == card_one -> card_one
      choice == card_two -> card_two
      :else ->
        IO.puts("invalid answer: #{choice}")
        make_decision(card_one, card_two)
    end
  end

  def make_decision(card_one, card_two) do
    {result, _} = IO.gets("#{card_one} or #{card_two}?\n") |> String.trim |> Integer.parse
    handle_decision(card_one, card_two, result)
  end

end
