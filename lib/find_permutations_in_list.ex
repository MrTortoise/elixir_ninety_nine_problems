defmodule FindPermutationsInList do

def permute([]), do: []
def permute(list) when is_list(list), do: Enum.map(list, fn x -> flatten(subPermute(list --[x],[x])) end)

def subPermute(list, head), do: head ++ Enum.map(list, fn x-> subPermute(list -- [x], head++ [x]) end)

def flatten([]), do: []
def flatten([item]) when is_list(item), do: flatten(item)
def flatten([h|t]), do: [h] ++ flatten([t])


# each route starts from a leaf and creates a list of all parents
# this list needs to be gotten for every leaf of the tree
def expand([]), do: []
def expand([x]), do: [[x]]
def expand([x,[h|t]]), do: [getPathToLeaf([],[x,[h|t]])]

def getPathToLeaf(parents,[h|[]]), do: parents ++ [h]
def getPathToLeaf(parents,[h|[t]]), do: getPathToLeaf(parents ++ [h],t)




end

# need a flattener
