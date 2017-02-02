defmodule FindListPermutationsTest do
  use ExUnit.Case, async: true


test "empty list is empty" do
  assert FindPermutationsInList.permute([]) == []
end

test "single item list is single item" do
  assert FindPermutationsInList.permute([1]) == [[1]]
end

test "assert 2 item list gets both" do
  assert FindPermutationsInList.permute([1,2]) == [[1,2],[2,1]]
end

test "assert 3 item list gets all" do
  assert FindPermutationsInList.permute([1,2,3]) == [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
end

end
