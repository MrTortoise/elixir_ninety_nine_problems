defmodule Problem14DuplicateElements do
  @moduledoc """
  Documentation for Problem14DuplicateElements.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem14DuplicateElements.duplicate([])
      []
  """

def duplicate([]), do: []
def duplicate([h|t]), do: [h,h] ++ duplicate(t);
end
