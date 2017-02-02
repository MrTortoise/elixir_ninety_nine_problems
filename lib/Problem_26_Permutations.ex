defmodule Problem26Permutations do
  @moduledoc """
  Documentation for Problem26Permutations.
  """

  @doc """
  Hello world.

  ## Examples
      # iex> Problem26Permutations.getNext(1,1,[])
      # [0]
  """

# def permute(0, lengthOfList, currentIndex), do: []
# def permute(1, lengthOfList, currentIndex), do: getStrip(0, lengthOfList-1)
# def permute(numberOfItems, lengthOfList, currentIndex), do: loopForEachBit(numberOfItems,0,getStartPoint(numberOfItems,lengthOfList-1))

# def doSomething([], _), do: []
# def doSomething(list, 0), do: list
# def doSomething([h|t], numberOfItems) do
#   Enum.map([h|t], fn x -> doSomething(t,numberOfItems-1) ++ doSomething(t,numberOfItems) end)
# end

#get starting position
#recurse as deep as number of items requires,
#at each recurse, use a map to join current val with  get the possible remaining values

# need to know recurse depth
# need to know max number of values to choose
# need to know number of values to choose from
# need to know number of count resets
# max index selection = max number of values to choose from - current recurse depth
# min index selection = current recurse depth + number of count resets
# ends when count reset > number of values to choose from - number of calues to choose

# def conmap(list, func), do: conmap list, func, []
# defp conmap([], _, result), do: reverse result
# defp conmap([head|tail], func, result), do: conmap(tail, func, func.(head)++result)
#
# def combinations(list, len), do: comb [], list, len
#
# defp comb([], list, 1), do: map list, fn(e)-> [e] end
# defp comb(object, list, 1), do: map list, fn(e)-> [e|object] end
# defp comb([], list, len), do: conmap list, fn(e)-> comb([e], List.delete(list, e), len-1) end
# defp comb(object, list, len), do: conmap list, fn(e)-> comb([e|object], List.delete(list, e), len-1) end

def flatten([]), do: []
def flatten([item]) when is_list(item), do: flatten(item)
def flatten([h|t]), do: [h] ++ flatten([t])

def doSomething(numberOfItems, numberToChoose), do: goCrazy(numberToChoose,numberOfItems,0,0)

def goCrazy(maxValuesToChoose, numberToChooseFrom, currentRecurseDepth, noCountResets)
when noCountResets > numberToChooseFrom - maxValuesToChoose
do
  []
end

def goCrazy(maxValuesToChoose, numberToChooseFrom, currentRecurseDepth, noCountResets)
when currentRecurseDepth == numberToChooseFrom
do
[flatten(goCrazy(maxValuesToChoose, numberToChooseFrom, 0, noCountResets+1))]
end

def goCrazy(maxValuesToChoose, numberToChooseFrom, currentRecurseDepth, noCountResets) do
  maxIndex = numberToChooseFrom - maxValuesToChoose + currentRecurseDepth
  minIndex = currentRecurseDepth + noCountResets
  currentRange = Enum.to_list(minIndex..maxIndex)
  Enum.map(currentRange, fn h -> [h,  goCrazy(maxValuesToChoose,numberToChooseFrom,currentRecurseDepth+1,noCountResets)] end)
end

def generateRow(maxValuesToChoose, numberToChooseFrom, rowIndex, currentIteration) when currentIteration == maxValuesToChoose, do: []
def generateRow(maxValuesToChoose, numberToChooseFrom, rowIndex, currentIteration) do
  maxIndex = numberToChooseFrom - maxValuesToChoose
  minIndex = currentIteration + rowIndex
  currentRange = Enum.to_list(minIndex..maxIndex)
  Enum.map(currentRange, fn h-> flatten( [h] ++ generateRow(maxValuesToChoose, numberToChooseFrom, rowIndex, currentIteration+1)) end)

end




#    , do: doSomething(appendEachOfRestOfList(h,t),numberOfItems-1)
#
# take each item and append to everything returned by something that
#
#
# def appendEachOfRestOfList(item,[]), do: []
# def appendEachOfRestOfList(item,[h|t]), do: [[h]] ++ appendEachOfRestOfList(item,t)

#
#

#
# def loopForEachBit(numberOfBits,indexOfBit, bitValues, lengthOfList) when indexOfBit >= numberOfBits, do: []
# def loopForEachBit(numberOfBits,indexOfBit, bitValues, lengthOfList) do
#   loopForEachBit(numberOfBits,indexOfBit+1) ++ iteratePosition(numberOfBits,bitValues,bitValues, lengthOfList)
# end
#
#
# def iteratePosition(numberOfSetBits,currentRowsBits,currentBits,maxIndex) when currentBits[numberOfSetBits-1] == maxIndex do
#   [currentBits] ++ startNextRow(numberOfSetBits,currentRowsBits,maxIndex)
# end
#
#
# def iteratePosition(numberOfSetBits, currentBits, maxIndex), do:
#
#
#
# defp permuteRecurse(numberOfItems, lengthOfList, currentIndex), do: getSubPermutations(lengthOfList-numberOfItems,lengthOfList-numberOfItems+1,lengthOfList-1)
#
# def getSubPermutations(indexToCombineWith, lowerIndex, upperIndex), do: constructCombination(indexToCombineWith, getStrip(lowerIndex,upperIndex))
# def constructCombination(index, indexList), do:  Enum.map(indexList, fn i -> [index] ++ [i] end)
# def getStrip(lowerIndex, upperIndex), do: Enum.to_list(lowerIndex..upperIndex)
end



# def choose(1, list), do: list
# def choose(something, list), do: []
#
# def pickCombination(0,list), do: []
#def pickCombination(noItems, list), do: selectItemsByIndex(generateIndexPermutations(noItems, list), list)
