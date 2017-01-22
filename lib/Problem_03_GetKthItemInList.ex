defmodule Problem03GetKthItemInList do
  @moduledoc """
  Documentation for Problem03GetKthItemInList.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Problem03GetKthItemInList.getKthItemFromList(2,[1,2,3])
      2

  """
  def getKthItemFromList(1,list), do: hd(list)
  def getKthItemFromList(k, list) do getKthItemFromList(k-1,tl(list))

  end
end
