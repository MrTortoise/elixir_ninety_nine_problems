defmodule Problem03GetKthItemInListTest do
  use ExUnit.Case, async: true
  doctest Problem03GetKthItemInList

  test "When Get first item from 1 item list then expect first item" do
    res = Problem03GetKthItemInList.getKthItemFromList(1,["fred"])
    assert res == "fred"
  end

  test "When Get 5th item from list then expect 5th item" do
    res = Problem03GetKthItemInList.getKthItemFromList(5,["fred",3,4,5,6,7,8])
    assert res == 6
  end

  test "When Get 7th item from list then expect 7th item" do
    res = Problem03GetKthItemInList.getKthItemFromList(7,["fred",1,2,3,4,5,6,7,8,9])
    assert res == 6
  end
end
