defmodule Problem01GetLastListItem do
  @moduledoc """
  Documentation for Problem01GetLastListItem.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Problem01GetLastListItem.getLastListItem([])
      []

      iex> Problem01GetLastListItem.getLastListItem([:item])
      [:item]

  """
  def getLastListItem([]), do: []
  def getLastListItem([item]), do: [item]
  def getLastListItem([_|tail]), do: getLastListItem(tail)
end
