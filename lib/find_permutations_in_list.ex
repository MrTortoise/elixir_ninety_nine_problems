defmodule FindPermutationsInList do

def permute([]), do: []
def permute(list) when is_list(list), do: Enum.map(list, fn x -> permute(list --[x],x) end)

defp permute(list, head), do: [head] ++ Enum.map(list, fn x-> permute(list -- [x], x) end)

def flatten([]), do: []
def flatten([item]) when is_list(item), do: flatten(item)
def flatten([h|t]), do: [h] ++ flatten([t])


# each route starts from a leaf and creates a list of all parents
# this list needs to be gotten for every leaf of the tree
def expandTree(list), do: expandTree([],[],list)

defp expandTree(acc, parents, []), do: acc ++ [parents]
defp expandTree(acc, parents, [item]) when not is_list(item), do: acc ++ [parents ++ [item]]
defp expandTree(acc, parents, [h|[t]]) when is_list(t), do: expandTree(acc, parents++[h],t)
defp expandTree(acc, parents, [h|t]) do
  expandTree(
  expandTree(acc,parents,t),
  parents++[h], getStartOfNextList(t))
  |> Enum.reverse
end

def getStartOfNextList([]), do: []
def getStartOfNextList([_|[t]]) when is_list(t), do: t
def getStartOfNextList([_|t]), do: getStartOfNextList(t)

end
