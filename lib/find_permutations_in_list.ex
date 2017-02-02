defmodule FindPermutationsInList do

def permute([]), do: []
def permute(list), do: Enum.map(list, fn x -> [x] ++ permute(createListWithout(list, x)) end)

def createListWithout([], _), do: []
def createListWithout([h|t], x)when h != x, do: [h] ++ createListWithout(t,x)
def createListWithout([h|t], x)when h == x, do: createListWithout(t,x)

end
