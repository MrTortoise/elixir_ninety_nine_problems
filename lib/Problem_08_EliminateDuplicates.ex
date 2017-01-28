defmodule Problem08EliminateDuplicates do
  @moduledoc """
  Documentation for Problem08EliminateDuplicates.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem08EliminateDuplicates.eliminateDuplicates([])
      []
  """
def eliminateDuplicates([]), do: []
def eliminateDuplicates([h|t]), do: [h] ++ eliminateDuplicates(strip(h,t))

def strip(item, []), do: []
def strip(item,[h|t]) when item == h, do: strip(item,t)
def strip(item, [h|t]) when item != h, do: [h] ++ strip(item,t)
end
