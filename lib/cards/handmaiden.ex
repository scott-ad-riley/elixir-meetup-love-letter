defmodule LoveLetter.Card.Handmaiden do

  def run(scores, current) do
    immunities = Map.get(scores, :immune, [])
    Map.put(scores, :immune, [current | immunities])
  end

end
