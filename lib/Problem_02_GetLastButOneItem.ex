defmodule Problem02GetLastButOneItem do
  @moduledoc """
  Documentation for Problem02GetLastButOneItem.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Problem02GetLastButOneItem.getLastButOneItemReverse([1,2,3])
      2

  """
  def getLastButOneItemReverse(items) when is_list(items) do
    rev = Enum.reverse(items)
    hd(tl(rev))
  end


  def getLastButOneItem(items)
  when is_list(items) && Enum.count(items) == 2 do
    tl(items)
  end
  def getLastButOneItem(items) when is_list(items) do



  end
end
