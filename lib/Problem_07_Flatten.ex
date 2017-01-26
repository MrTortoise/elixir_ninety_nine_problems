defmodule Problem07Flatten do
  @moduledoc """
  Documentation for Problem07Flatten.
  """

  @doc """
  Hello world.

  ## Examples
      iex> Problem07Flatten.flatten([])
      []
  """
def flatten([]), do: []
def flatten([item]) when is_list(item), do: flatten(item)
def flatten([h|t]), do: [h] ++ flatten([t])
end
