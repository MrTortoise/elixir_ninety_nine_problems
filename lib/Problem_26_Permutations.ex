defmodule Problem26Permutations do
  @moduledoc """
  Documentation for Problem26Permutations.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem26Permutations.getNext(1,1,[])
      [0]
  """

def permute(0, lengthOfList, currentIndex), do: []
def permute(1, lengthOfList, currentIndex), do: getStrip(0, lengthOfList-1)
def permute(numberOfItems, lengthOfList, currentIndex), do: permuteRecurse(numberOfItems, lengthOfList, currentIndex)

def getNextStartPoint(numberOfItems,maximumIndex, []), do: Enum.to_list(0..numberOfItems-1)
def getNextStartPoint(numberOfItems,maximumIndex, currentPoints), do:
def permute(startPoint)
defp permuteRecurse(numberOfItems, lengthOfList, currentIndex), do: getSubPermutations(lengthOfList-numberOfItems,lengthOfList-numberOfItems+1,lengthOfList-1)

def getSubPermutations(indexToCombineWith, lowerIndex, upperIndex), do: constructCombination(indexToCombineWith, getStrip(lowerIndex,upperIndex))
def constructCombination(index, indexList), do:  Enum.map(indexList, fn i -> [index] ++ [i] end)
def getStrip(lowerIndex, upperIndex), do: Enum.to_list(lowerIndex..upperIndex)


def getNext(numberOfItems, lengthOfList,_) when numberOfItems > lengthOfList, do: {:err, "number of items was greater than length of list"}
def getNext(numberOfItems, lengthOfList,[]) do
  startList = Enum.to_list(0..numberOfItems-1)
  startList ++  getNext(numberOfItems, lengthOfList, startList)
end
def getNext(numberOfItems, lengthOfList, curentIndicies), do: []
end



# def choose(1, list), do: list
# def choose(something, list), do: []
#
# def pickCombination(0,list), do: []
#def pickCombination(noItems, list), do: selectItemsByIndex(generateIndexPermutations(noItems, list), list)
