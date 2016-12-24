defmodule LoveLetter.Player do

  def make_decision(card_one, card_two) do
    {result, _} = IO.gets("#{card_one} or #{card_two}?\n") |> String.trim |> Integer.parse
    cond do
      result == card_one -> card_one
      result == card_two -> card_two
      :else -> IO.puts("invalid answer: #{result}"); make_decision(card_one, card_two)
    end
  end

end
