defmodule Problem22GenerateIntsInRange do
  @moduledoc """
  Documentation for Problem22GenerateIntsInRange.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem22GenerateIntsInRange.generateRange(0,1)
      [0,1]
  """
def generateRange(lower,upper) when lower > upper, do: []
def generateRange(lower, upper), do: [lower] ++ generateRange(lower+1,upper)
end
