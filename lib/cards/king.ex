defmodule LoveLetter.Card.King do

  def run(scores, {current, target}) do
    current_card = scores[current]
    target_card = scores[target]
    %{ scores | current => target_card, target => current_card }
  end

  def requirements, do: {:current, :target}

end
