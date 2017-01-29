defmodule Problem21InsertAtTest do
  use ExUnit.Case, async: true
  doctest Problem21InsertAt

  test "insert item into empty" do
    assert Problem21InsertAt.insertAt([],2,0)==[2]
  end

  test "insert item into middle of list" do
    assert Problem21InsertAt.insertAt([1,2,3],5,1) == [1,5,2,3]
  end

  test "insert into single item list" do
    assert Problem21InsertAt.insertAt([1],5,0 ) == [5,1]
  end

  test "insert at the end of a list" do
    assert Problem21InsertAt.insertAt([1,2,3,4], 5, 4) == [1,2,3,4,5]
  end
end
