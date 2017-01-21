defmodule Problem01GetLastListItem do
  @moduledoc """
  Documentation for Problem01GetLastListItem.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Problem01GetLastListItem.getLastListItem([])
      []

  """
  def getLastListItem([]), do: []
  def getLastListItem([item]), do: [item]
  def getLastListItem([head|tail]), do: getLastListItem(tail)
end
