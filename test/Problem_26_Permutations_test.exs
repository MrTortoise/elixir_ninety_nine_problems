defmodule Problem26PermutationsTest do
  use ExUnit.Case, async: true
  doctest Problem26Permutations

  # test "3 choose 1" do
  #   assert Problem26Permutations.choose(1,[1,2,3]) == [1,2,3]
  # end
  #
  # test "3 choose 2" do
  #   assert Problem26Permutations.choose(2,[1,2,3]) == [[1,2],[1,3],[2,3]]
  # end
  #
  # test "3 choose 3" do
  #   assert Problem26Permutations.choose(2,[1,2,3]) == [[1,2,3]]
  # end
  #
  #
  # test "get next combination 1 of 2" do
  #   assert Problem26Permutations.getNext(1,2,[1]) == [2]
  # end
  #
  # test "get next combination 2 of 3" do
  #   assert Problem26Permutations.getNext(2,3,[1,2]) == [1,3]
  # end

  # test "construct combination simple" do
  #   assert Problem26Permutations.constructCombination(5,[1,2,3]) == [[5,1],[5,2],[5,3]]
  # end
  #
  # test "test simple 0 item construction" do
  #   assert Problem26Permutations.permute(0,5,0) == []
  # end
  #
  # test "test simple 1 item construction" do
  #   assert Problem26Permutations.permute(1,5,0) == [0,1,2,3,4]
  # end
  #
  # test "test simple 2 items construction" do
  #   assert Problem26Permutations.permute(2,5,0) == [[0,1],[0,2],[0,3],[0,4]]
  # end
  #
  # test "start with empty list, select first indicies" do
  #   assert Problem26Permutations.getNext(3,3,[]) == [0,1,2]
  # end
  #
  # test "iterate through list selecting one item" do
  #   assert Problem26Permutations.getNext(1,5,[]) == [0,1,2,3,4]
  # end
  # 
  # test "shooty bang bang" do
  #   assert Problem26Permutations.doSomething(3,2) == [1,2,3]
  # end
  #
  # test "generate full test" do
  #   assert Problem26Permutations.generateRow(4,4,0,0) == [1,2,3,4]
  # end
  #
  # test "generate row test" do
  #   assert Problem26Permutations.generateRow(3,1,0,0) == [1,2,3]
  # end


end
