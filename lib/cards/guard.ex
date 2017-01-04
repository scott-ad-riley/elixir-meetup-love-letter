defmodule LoveLetter.Card.Guard do

  def run(scores, {target, guess}) do
    current_card = Map.get(scores, target)
    cond do
      current_card == guess -> Map.delete(scores, target)
      :else -> scores
    end
  end

  def requirements, do: {:target, :guess}

end
