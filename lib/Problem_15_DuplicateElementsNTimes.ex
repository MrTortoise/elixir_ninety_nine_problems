defmodule Problem15DuplicateElements do
  @moduledoc """
  Documentation for Problem15DuplicateElements.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem15DuplicateElements.duplicate([],1)
      []
  """

def duplicate([],_), do: []
def duplicate([h|t],number), do: [h] ++ duplicate([h|t],number,number-1)

defp duplicate([_|t],number,0), do: duplicate(t,number)
defp duplicate([h|t],number,count), do: [h] ++ duplicate([h|t],number,count-1)

end
