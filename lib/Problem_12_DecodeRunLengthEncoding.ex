defmodule Problem12DecodeRunLengthEncoding do
  @moduledoc """
  Documentation for Problem12DecodeRunLengthEncoding.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem12DecodeRunLengthEncoding.decode([])
      []
  """

  def decode([]), do: []
  def decode([h|t]), do: decodeBlock(h) ++ decode(t)

  defp decodeBlock(item) when not is_list(item), do: [item]
  defp decodeBlock([h|t]), do: decodeBlock(h,t)
  defp decodeBlock(0,_), do: []
  defp decodeBlock(number,item), do: item ++ decodeBlock(number-1,item)

end
