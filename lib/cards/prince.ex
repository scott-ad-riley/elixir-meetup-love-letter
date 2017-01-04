defmodule LoveLetter.Card.Prince do
  alias LoveLetter.Deck

  def run(scores, target) do
    %{:deck => current_deck} = scores
    {new_card, new_deck} = current_deck |> Deck.draw_card
    %{scores | target => new_card, :deck => new_deck}
  end

  def requirements, do: {:target}

end
