defmodule Problem01GetLastListItemTest do
  use ExUnit.Case, async: true
  doctest Problem01GetLastListItem


  test "when list empty expect empty list" do
    res = Problem01GetLastListItem.getLastListItem([])
    assert length(res) == 0
  end

  test "when single item return single items" do
    res =  Problem01GetLastListItem.getLastListItem([1])
    assert res == [1]
  end

  test "when two items then return second" do
    assert Problem01GetLastListItem.getLastListItem([1,2]) == [2]
  end

  test "when multiple items then return last" do
    assert Problem01GetLastListItem.getLastListItem([1,2,3,"sheep"]) == ["sheep"]    
  end
end
