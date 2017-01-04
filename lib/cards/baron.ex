defmodule LoveLetter.Card.Baron do

  def run(scores, {current, target}) do
    current_value = Map.get(scores, current)
    target_value = Map.get(scores, target)
    cond do
      current_value > target_value -> Map.delete(scores, target)
      current_value < target_value -> Map.delete(scores, current)
      :else -> scores
    end
  end

  def requirements, do: {:current, :target}

end
