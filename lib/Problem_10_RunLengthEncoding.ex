defmodule Problem10RunLengthEncoding do
  @moduledoc """
  Documentation for Problem10RunLengthEncoding.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem10RunLengthEncoding.runLengthEncoding([])
      []
  """

def runLengthEncoding([]), do: []
def runLengthEncoding(list) when is_list(list), do: aggregateSubLists(Problem09SplitIntoSublists.split(list))

defp aggregateSubLists([]), do: []
defp aggregateSubLists([h|t]), do: [aggregateSubList(h)] ++ aggregateSubLists(t)

defp aggregateSubList([h|t]), do: [Enum.count([h|t])] ++ [h]
end
