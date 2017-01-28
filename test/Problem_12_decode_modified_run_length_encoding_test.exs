defmodule Problem12DecodeRunLengthEncodingTest do
  use ExUnit.Case, async: true
  doctest Problem12DecodeRunLengthEncoding

  test "empty list expect empty list" do
    assert Problem12DecodeRunLengthEncoding.decode([]) == []
  end

  test "split single item list expect single item" do
    assert Problem12DecodeRunLengthEncoding.decode([:a]) == [:a]
  end

  test "decode 4 blocks" do
    assert Problem12DecodeRunLengthEncoding.decode([[3,2],[4,1],5,[2,6]]) == [2,2,2,1,1,1,1,5,6,6]
  end

  # test "encode longer string" do
  #   assert Problem11ModifiedRunLengthEncoding.runLengthEncoding([1,1,1,1,2,3,3,1,1,4,5,5,5,5]) == [[4,1],2,[2,3],[2,1],4,[4,5]]
  # end
end
