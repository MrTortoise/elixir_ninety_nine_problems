defmodule Problem05ReverseList do
  @moduledoc """
  Documentation for Problem05ReverseList.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Problem05ReverseList.reverseList([])
      []

  """
  def reverseList([]), do: []
  def reverseList([a]), do: [a]
  def reverseList(list) when is_list(list), do: reverseList(tl(list),[hd(list)])

  defp reverseList([h|t],reversed), do: reverseList(t,[h]++reversed)
  defp reverseList(a,list), do: a++list
end
