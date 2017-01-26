defmodule Problem04LengthOfList do
  @moduledoc """
  Documentation for Problem04LengthOfList.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Problem04LengthOfList.lengthOfList([1,2,3])
      3

  """
  def lengthOfList([]), do: 0
  def lengthOfList([_]), do: 1
  def lengthOfList(items) when is_list(items), do: 1+ lengthOfList(tl(items))
end
