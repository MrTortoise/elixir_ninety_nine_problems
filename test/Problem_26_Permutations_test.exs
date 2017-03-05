defmodule Problem26PermutationsTest do
  use ExUnit.Case, async: true
  doctest Problem26Permutations

  # test "3 choose 1" do
  #   assert Problem26Permutations.choose(1,[1,2,3]) == [1,2,3]
  # end
  #
test "1 choose 0" do
  assert Problem26Permutations.permute(0,[1]) == []
end

end
