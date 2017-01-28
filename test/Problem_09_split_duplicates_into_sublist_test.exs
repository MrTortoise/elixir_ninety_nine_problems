defmodule Problem09SplitIntoSublistsTest do
  use ExUnit.Case, async: true
  doctest Problem09SplitIntoSublists

  test "empty list expect empty list" do
    assert Problem09SplitIntoSublists.split([]) == []
  end

  test "split single item list expect single item" do
    assert Problem09SplitIntoSublists.split([:a]) == [[:a]]
  end

  test "split multiple value list expect many sublists" do
    assert Problem09SplitIntoSublists.split([1,1,1,1,2,3,3,1,1,4,5,5,5,5]) == [[1,1,1,1],[2],[3,3],[1,1],[4],[5,5,5,5]]
  end
end
