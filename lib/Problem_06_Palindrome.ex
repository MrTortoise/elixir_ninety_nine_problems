defmodule Problem06Palindrome do
  @moduledoc """
  Documentation for Problem06Palindrome.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Problem06Palindrome.palindrome([])
      false

  """
  def palindrome([]), do: false
  def palindrome([_]), do: true
  def palindrome(list) when is_list(list) do
    [h1|t1] = list
    [hr|tr] = Enum.reverse(list)
    h1 == hr && palindrome(t1,tr)
  end

  defp palindrome([h|t],[rh|rt]) do
    (h==rh) && palindrome(t,rt)
  end
  defp palindrome(h,r), do: h==r
end
