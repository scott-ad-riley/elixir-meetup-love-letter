defmodule LoveLetter.Game do
  alias LoveLetter.Player

  def play_game(player_count) do
    deck = LoveLetter.shuffle_deck
    play_turn(deck, player_count |> generate_state, 1)
  end

  def generate_state(player_count) when player_count >= 2 do
    Range.new(1, player_count)
    |> Enum.reduce(%{}, fn(int, acc) -> Map.put(acc, int, 0) end)
  end

  def calculate_winner(scores) do
    IO.puts "current scores"
    IO.inspect scores
    Map.keys(scores)
    |> Enum.reduce(1, fn(key, acc) ->
      case scores[key] > scores[acc] do
        true -> key
        false -> acc
      end
    end)
  end

  def print_winner(winning_player) do
    IO.puts "Congratulations player: #{winning_player}!"
  end

  def play_turn([], scores, _) do
    calculate_winner(scores) |> print_winner
  end

  def play_turn(current_deck, scores, current_player) do
    {drawn, new_deck} = current_deck |> LoveLetter.draw_card
    current_card = scores[current_player]
    IO.puts "Player: #{current_player} just drew card: #{drawn} with #{current_card} in their hand"
    new_scores = %{ scores | current_player => Player.make_decision(drawn, current_card)}
    play_turn(new_deck, new_scores, next_player(current_player, scores))
  end

  def next_player(current_player, scores) do
    case Map.has_key?(scores, current_player + 1) do
      true -> current_player + 1
      false -> 1
    end
  end
end
