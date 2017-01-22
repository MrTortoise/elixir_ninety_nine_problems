defmodule Problem04LengthOfListTest do
  use ExUnit.Case, async: true
  doctest Problem04LengthOfList

  test "Length of Empty List is 0" do
    res = Problem04LengthOfList.lengthOfList([])
    assert res == 0
  end

  test "Length of 1 item List is 1" do
    res = Problem04LengthOfList.lengthOfList([2])
    assert res == 1
  end

  test "Length of 2 item List is 2" do
    res = Problem04LengthOfList.lengthOfList([2,3])
    assert res == 2
  end

  test "Length of 4 item List is 4" do
    res = Problem04LengthOfList.lengthOfList([2,3,4,5])
    assert res == 4
  end
end
