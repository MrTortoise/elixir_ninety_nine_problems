defmodule Problem14DuplicateElementsTest do
  use ExUnit.Case, async: true
  doctest Problem14DuplicateElements

  test "empty list expect empty list" do
    assert Problem14DuplicateElements.duplicate([]) == []
  end

  test "single item suplicate" do
    assert Problem14DuplicateElements.duplicate([1]) == [1,1]
  end

  test "3 item suplicate" do
    assert Problem14DuplicateElements.duplicate([1,1,4]) == [1,1,1,1,4,4]
  end
end
