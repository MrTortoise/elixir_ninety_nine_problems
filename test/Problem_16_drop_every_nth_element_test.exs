defmodule Problem16DropEveryNthElementTest do
  use ExUnit.Case, async: true
  doctest Problem16DropEveryNthElement

  test "empty list expect empty list" do
    assert Problem16DropEveryNthElement.drop(5,[]) == []
  end

  test "drop no items" do
    assert Problem16DropEveryNthElement.drop(0,[1,2,3,4,5]) == [1,2,3,4,5]
  end

  test "drop all items" do
    assert Problem16DropEveryNthElement.drop(1,[1,2,3,4]) == []
  end

  test "drop every 2nd item" do
    assert Problem16DropEveryNthElement.drop(2,[1,2,3,4,5,6]) == [1,3,5]
  end


end
