defmodule Problem18ExtractSlice do
  @moduledoc """
  Documentation for Problem18ExtractSlice.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem18ExtractSlice.slice(1,2,[])
      []
  """
def slice(_,_,[]), do: []
def slice(_,0,_), do: []
def slice(i,k,[_|t]) when i > 0, do: slice(i-1,k,t)
def slice(0,k,[h|t]) when k > 0, do: [h] ++ slice(0,k-1,t)


end
