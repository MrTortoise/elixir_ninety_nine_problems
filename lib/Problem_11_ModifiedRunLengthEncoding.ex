defmodule Problem11ModifiedRunLengthEncoding do
  @moduledoc """
  Documentation for Problem11ModifiedRunLengthEncoding.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem11ModifiedRunLengthEncoding.runLengthEncoding([])
      []
  """

  def runLengthEncoding([]), do: []
  def runLengthEncoding(list) when is_list(list), do: aggregateSubLists(Problem09SplitIntoSublists.split(list))

  defp aggregateSubLists([]), do: []
  defp aggregateSubLists([h|t]), do: [aggregateSubList(h)] ++ aggregateSubLists(t)

  defp aggregateSubList([h|[]]), do: h
  defp aggregateSubList([h|t]), do: [Enum.count([h|t])] ++ [h]
end
