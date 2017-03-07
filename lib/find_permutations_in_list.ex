defmodule FindPermutationsInList do

def permute([]), do: []
def permute(list) when is_list(list), do: Enum.map(list, fn x -> flatten(subPermute(list --[x],[x])) end)

def subPermute(list, head), do: head ++ Enum.map(list, fn x-> subPermute(list -- [x], head++ [x]) end)

def flatten([]), do: []
def flatten([item]) when is_list(item), do: flatten(item)
def flatten([h|t]), do: [h] ++ flatten([t])


# each route starts from a leaf and creates a list of all parents
# this list needs to be gotten for every leaf of the tree
def expandTree(list), do: expandTree([],[],list)
# def expand([x,[h|t]]), do: getPathToLeaf([],[x,[h|t]],[])

defp expandTree(acc, parents, []), do: acc ++ [parents]
defp expandTree(acc, parents, [item]) when not is_list(item), do: acc ++ [parents ++ [item]]
defp expandTree(acc, parents, [h|[t]]) when is_list(t), do: expandTree(acc, parents++[h],t)
defp expandTree(acc, parents, [h|t]) do
  expandTree(
  expandTree(acc,parents,t),
  parents++[h], getStartOfNextList(t))
  |> Enum.reverse
end



# def accumulatePathsToLeaves(parentNodes, accumulator, []), do: accumulator ++ [[parentNodes]]
# def accumulatePathsToLeaves(parentNodes, accumulator, [h|[item]]), do: accumulatePathsToLeaves(parentNodes ++ [h], accumulator, [item])
# def accumulatePathsToLeaves(parentNodes, accumulator, [item]), do: accumulator ++ [parentNodes ++ item]
# def accumulatePathsToLeaves(parentNodes, accumulator, []), do: accumulator ++ [parentNodes]
# def accumulatePathsToLeaves(parentNodes, accumulator, [h|[t]]) when is_list(t), do: accumulatePathsToLeaves(parentNodes, accumulator, t)
# def accumulatePathsToLeaves(parentNodes, accumulator, [h|t]) do
#   accumulatePathsToLeaves(
#   parentNodes ++ [h],
#   accumulatePathsToLeaves(parentNodes,accumulator,t),
#   getStartOfNextList(t)  )
# end

#if node has tail that is not start of a list then branch(parents, accumulator, pass in tail)
#if node has a tail that is the start of a list then create new level(parents ++ this node, accumulator, pass in tail)


def getStartOfNextList([]), do: []
def getStartOfNextList([_|[t]]) when is_list(t), do: t
def getStartOfNextList([_|t]), do: getStartOfNextList(t)
# def accumulatePathsToLeaves(parentNodes, accumulator,[this|[children]]),
# def accumulatePathsToLeaves(parentNodes,accumulator,[this|children]), do: accumulatePathsToLeaves(parentNodes++[this],accumulator,children)

# def getPathToLeaf(parents,[h|[t]],acc), do: acc ++ [getPathToLeaf(parents ++ [h],t)]
# def getPathToLeaf(parents,[item]), do: parents ++ [item]
# def getPathToLeaf(parents,item), do: parents ++ [item]



end

# need a flattener
