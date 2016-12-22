defmodule LoveLetter.Game do

  def play_game(player_count) do
    deck = LoveLetter.shuffle_deck
    IO.puts play_turn(deck, player_count, %{})
  end

  def play_turn(deck, player_count, carry) do
    new_carry = for player <- 1..10 do
      case LoveLetter.draw_card(deck) do
        { card, deck } -> Map.put(carry, player, card)
        :empty_deck -> carry
      end
    end

    play_turn(deck, player_count, new_carry)
  end

  def play_turn([], player_count, carry) do
    Map.keys(carry)
    |> Enum.reduce(0, fn (key, acc) ->
      cond do
        carry[key] >= carry[acc] -> key
        :else -> acc
      end
    end)
  end
end
