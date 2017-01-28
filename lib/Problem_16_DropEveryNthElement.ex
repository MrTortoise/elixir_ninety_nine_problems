defmodule Problem16DropEveryNthElement do
  @moduledoc """
  Documentation for Problem16DropEveryNthElement.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem16DropEveryNthElement.drop(2,[])
      []
  """

def drop(_,[]), do: []
def drop(0,list), do: list
def drop(1,_), do: []

def drop(number, list), do: drop(number,list,number)
defp drop(_, [],_), do: []
defp drop(number, [_|t],1), do: drop(number,t,number)
defp drop(number, [h|t],count), do: [h] ++ drop(number, t, count-1)

end
