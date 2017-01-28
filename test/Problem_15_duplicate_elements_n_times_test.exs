defmodule Problem15DuplicateElementsTest do
  use ExUnit.Case, async: true
  doctest Problem15DuplicateElements

  test "empty list expect empty list" do
    assert Problem15DuplicateElements.duplicate([],5) == []
  end

  test "single item duplicate" do
    assert Problem15DuplicateElements.duplicate([1],2) == [1,1]
  end

  test "3 item duplicate" do
    assert Problem15DuplicateElements.duplicate([1,1,4],2) == [1,1,1,1,4,4]
  end

  test "3 item duplicate 3" do
    assert Problem15DuplicateElements.duplicate([1,1,4],3) == [1,1,1,1,1,1,4,4,4]
  end
end
