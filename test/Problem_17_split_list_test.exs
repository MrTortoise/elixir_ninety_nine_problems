defmodule Problem17SplitListTest do
  use ExUnit.Case, async: true
  doctest Problem17SplitList

  test "empty list expect empty list" do
    assert Problem17SplitList.split(2,[]) == [[],[]]
  end

  test "split 2 item list in middle" do
    assert Problem17SplitList.split(1,[1,2]) == [[1],[2]]
  end

  test "split 4 item list in middle" do
    assert Problem17SplitList.split(2,[1,2,3,4,5]) == [[1,2],[3,4,5]]
  end
end
