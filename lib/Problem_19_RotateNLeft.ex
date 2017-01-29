defmodule Problem19RotateNLeft do
  @moduledoc """
  Documentation for Problem19RotateNLeft.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem19RotateNLeft.rotate([],2)
      []
  """
def rotate([],_), do: []
def rotate(list, 0), do: list
def rotate([h|t], number), do: rotate(t, number-1, [h])

def rotate(list, 0, tail), do: list ++ tail
def rotate([h|t], number, tail), do: rotate(t, number-1, tail ++ [h])


end
