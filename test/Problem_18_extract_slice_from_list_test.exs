defmodule Problem18ExtractSliceTest do
  use ExUnit.Case, async: true
  doctest Problem18ExtractSlice

  test "empty list expect empty list" do
    assert Problem18ExtractSlice.slice(1,2,[]) == []
  end

  test "slice an item from a 2 item list" do
    assert Problem18ExtractSlice.slice(1,1,[1,2]) == [2]
  end

  test "slice 3 items from middle of 6 item list" do
    assert Problem18ExtractSlice.slice(2,3,[1,2,3,4,5,6]) == [3,4,5]
  end
end
