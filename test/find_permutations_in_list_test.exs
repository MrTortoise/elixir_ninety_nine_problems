defmodule FindListPermutationsTest do
  use ExUnit.Case, async: true


test "empty list is empty" do
  assert FindPermutationsInList.permute([]) == []
end

test "single item list is single item" do
  assert FindPermutationsInList.permute([1]) == [[1]]
end

test "assert 2 item list gets both" do
  assert FindPermutationsInList.permute([1,2]) == [[1, [2]], [2, [1]]]
end

test "assert 3 item list gets all" do
  assert FindPermutationsInList.permute([1,2,3]) == [[1, [2, [3]], [3, [2]]], [2, [1, [3]], [3, [1]]], [3, [1, [2]], [2, [1]]]]
end



test "asserts expand 1 item" do
  assert FindPermutationsInList.expandTree([1]) == [[1]]
end

test "assert expand 2 item" do
  assert FindPermutationsInList.expandTree([1,[2]]) == [[1,2]]
end

test "assert expand 3 items" do
  assert FindPermutationsInList.expandTree([1,[2,[3]]]) == [[1,2,3]]
end

test "assert expand 2 items, second list" do
  assert FindPermutationsInList.expandTree([1,[2,3]]) == [[1,2],[1,3]]
end


test "assert get start of next list for empty list" do
  assert FindPermutationsInList.getStartOfNextList([]) == []
end

test "assert get start of next list fort no next list is empty" do
  assert FindPermutationsInList.getStartOfNextList([1,2,3]) == []
end

test "assert get start of next list works for list with sub list" do
  assert FindPermutationsInList.getStartOfNextList([1,2,[3]]) == [3]
end

test "assert get start of list for multiple sublists returns correctly" do
  assert FindPermutationsInList.getStartOfNextList([1,2,[3,[4,[5,6]]]])  == [3,[4,[5,6]]]
end
end
