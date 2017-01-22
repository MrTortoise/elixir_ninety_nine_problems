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

  def getLastButOneItem(items) when is_list(items) do
    getItemNDeep(Enum.count(items),items)
  end

  defp getItemNDeep(2,list), do: hd(list)
  defp getItemNDeep(remaining, list), do: getItemNDeep(remaining-1, tl(list))
end
