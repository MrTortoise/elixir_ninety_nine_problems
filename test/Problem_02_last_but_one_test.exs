defmodule Problem02GetLastButOneItemTest do
  use ExUnit.Case, async: true
  doctest Problem02GetLastButOneItem

  test "list with 2 items returns first" do
    res = Problem02GetLastButOneItem.getLastButOneItem([1,2])
    assert res == 1
  end

  test "list with 4 items returns 3rd" do
    res = Problem02GetLastButOneItem.getLastButOneItem([1,2,3,4])
    assert res == 3
  end

  test "list with 2 items returns first - reverse" do
    res = Problem02GetLastButOneItem.getLastButOneItemReverse([1,2])
    assert res == 1
  end

  test "list with 4 items returns 3rd - reverse" do
    res = Problem02GetLastButOneItem.getLastButOneItemReverse([1,2,3,4])
    assert res == 3
  end


end
