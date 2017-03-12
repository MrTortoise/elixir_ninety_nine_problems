defmodule CombinationTree do
  @moduledoc """
Functions for walking from root to leaves ant iterating over all leaves

A tree list has the form of


[root:,[1,[4]],[2],[3]] is a tree of the form

  """

  @doc """
  Gets all the combinations inside a combination tree
  ## Examples

      iex> CombinationTree.expandTree([])
      [[]]

      iex> CombinationTree.expandTree([1])
      [[1]]

      iex> CombinationTree.expandTree([1,[2]])
      [[1,2]]

      iex> CombinationTree.expandTree([1,[2],[3]])
      [[1,2],[1,3]]

  """
  def expandTree(list), do: expandTree([],[],list)
  defp expandTree(acc, parents, []), do: acc ++ [parents]
  # base case for final item in the list, add to the parents and append that to the accumulator.
  defp expandTree(acc, parents, [item]) when not is_list(item), do: acc ++ [parents ++ [item]]
  # we have a branching list
  defp expandTree(acc, parents, [list]) when Enum.count(list) > 2  do
     [expandTree(acc, parents ++ [h],t)]
  end
  defp expandTree(acc, parents, [h|[t]]), do: expandTree(acc, parents ++ [h], t)


end
