defmodule Problem20RemoveKthItemTest do
  use ExUnit.Case, async: true
  doctest Problem20RemoveKthItem

  test "empty list expect empty list" do
    assert Problem20RemoveKthItem.removeAt([],2)==[]
  end

  test "remove from single item list" do
    assert Problem20RemoveKthItem.removeAt([1],0 ) == []
  end

test "remove 2nd item" do
  assert Problem20RemoveKthItem.removeAt([1,2,3,4], 1) == [1,3,4]
end
end
