defmodule Problem13RunLengthEncoding do
  @moduledoc """
  Documentation for Problem13RunLengthEncoding.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem13RunLengthEncoding.encode([])
      []
  """

def encode([]), do: []
def encode([h|t]), do: [encodeBlock(h,[h|t],0)] ++ encode(nextBlock([h|t]))

defp encodeBlock(item,[],1), do: item
defp encodeBlock(item,[],number), do: [number, item]
defp encodeBlock(item,[h|_],1) when item != h, do: item
defp encodeBlock(item,[h|_],number) when item != h, do: [number, item]

defp encodeBlock(item,[h|t],number) when item == h, do: encodeBlock(item,t,number+1)

def nextBlock([]), do: []
def nextBlock([_|[]]), do: []
def nextBlock([h|t]), do: nextBlock(h,t)

defp nextBlock(_,[]), do: []
defp nextBlock(item,[h|t]) when h == item, do: nextBlock(item,t)
defp nextBlock(item,[h|t]) when h != item, do: [h|t]
end
