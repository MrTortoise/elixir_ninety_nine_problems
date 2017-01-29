defmodule Problem20RemoveKthItem do
  @moduledoc """
  Documentation for Problem20RemoveKthItem.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem20RemoveKthItem.removeAt([],2)
      []
  """
def removeAt([],_), do: []
def removeAt([_|t],0), do: t
def removeAt([h|t],number),do: [h] ++ removeAt(t,number-1 )

end
