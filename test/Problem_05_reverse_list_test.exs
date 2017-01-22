defmodule Problem05ReverseListTest do
  use ExUnit.Case, async: true
  doctest Problem05ReverseList

  test "Reverse Empty List" do
    assert Problem05ReverseList.reverseList([]) == []
  end

  test "Reverse single item List" do
    assert Problem05ReverseList.reverseList([2]) == [2]
  end

  test "Reverse 2 item List" do
    assert Problem05ReverseList.reverseList([2,1]) == [1,2]
  end

end
