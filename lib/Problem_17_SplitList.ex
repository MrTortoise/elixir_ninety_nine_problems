defmodule Problem17SplitList do
  @moduledoc """
  Documentation for Problem17SplitList.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem17SplitList.split(2,[])
      [[],[]]
  """

def split(_,[]), do: [[],[]]
def split(number,list), do: [getItemsUpToNumber(number,list),getItemsAfterNumber(number,list)]

def getItemsUpToNumber(number,list), do: getItemsUpToNumber(number,list,number)
def getItemsUpToNumber(_, [], _), do: []
def getItemsUpToNumber(_, _, 0), do: []
def getItemsUpToNumber(number, [h|t], count) when count >0, do: [h] ++ getItemsUpToNumber(number,t,count-1)

def getItemsAfterNumber(_,[]), do: []
def getItemsAfterNumber(count,[_|t]) when count == 1, do: t
def getItemsAfterNumber(count, [_|t]), do: getItemsAfterNumber(count-1, t)


end
