defmodule Problem08EliminateDuplicatesTest do
  use ExUnit.Case, async: true
  doctest Problem08EliminateDuplicates

  test "empty list expect empty list" do
    assert Problem08EliminateDuplicates.eliminateDuplicates([]) == []
  end

  test "Dedupe single item list expect single item" do
    assert Problem08EliminateDuplicates.eliminateDuplicates([:a]) == [:a]
  end

  test "Flatten multiple value list expect same list" do
    assert Problem08EliminateDuplicates.eliminateDuplicates([1,1,1,1,2,3,3,1,1,4,5,5,5,5]) == [1,2,3,4,5]
  end
end
