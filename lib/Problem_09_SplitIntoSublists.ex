defmodule Problem09SplitIntoSublists do
  @moduledoc """
  Documentation for Problem09SplitIntoSublists.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem09SplitIntoSublists.split([])
      []
  """
def split([]), do: []
def split(item) when is_list(item), do: [getBlockOfSame(item)]++split(stripFirstBlock(item))

defp getBlockOfSame([]), do: []
defp getBlockOfSame([h|t]), do: [h]++ getBlockOfSame(h,t)
defp getBlockOfSame(_,[]),  do: []
defp getBlockOfSame(item,[h|t]) when item == h, do: [h] ++ getBlockOfSame(item,t)
defp getBlockOfSame(item,[h|_]) when item != h, do: []

defp stripFirstBlock([]), do: []
defp stripFirstBlock([h|t]), do: stripFirstBlock(h,t)
defp stripFirstBlock(_,[]), do: []
defp stripFirstBlock(item, [h|t]) when item == h, do: stripFirstBlock(item,t)
defp stripFirstBlock(item, [h|t]) when item != h, do: [h|t]

end
