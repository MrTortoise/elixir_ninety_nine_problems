defmodule Problem23GenerateRandomPermutationOfList do
  @moduledoc """
  Documentation for Problem23GenerateRandomPermutationOfList.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem23GenerateRandomPermutationOfList.generatePermutation([],1)
      []
  """
def generatePermutation([], _), do: []
def generatePermutation(list, 0), do: []
def generatePermutation(list,numberOfPicks) do
  length = Enum.count(list)
  index = :rand.uniform(length)
  [getItemAtIndex(list,index)] ++ generatePermutation(list,numberOfPicks-1)
end
defp getItemAtIndex([],_), do: []
defp getItemAtIndex([h|t],0), do: [h]
defp getItemAtIndex([h|t],index), do: getItemAtIndex(t,index-1)
end
