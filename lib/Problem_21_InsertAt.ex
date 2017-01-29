defmodule Problem21InsertAt do
  @moduledoc """
  Documentation for Problem21InsertAt.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem21InsertAt.insertAt([],2,0)
      [2]
  """
def insertAt([],item,0), do: [item]
def insertAt(list,item,0), do: [item] ++ list
def insertAt([h|t],item,index), do: [h] ++ insertAt(t, item, index-1)
end
