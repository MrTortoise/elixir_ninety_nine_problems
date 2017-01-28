defmodule Problem11ModifiedRunLengthEncodingTest do
  use ExUnit.Case, async: true
  doctest Problem11ModifiedRunLengthEncoding

  test "empty list expect empty list" do
    assert Problem11ModifiedRunLengthEncoding.runLengthEncoding([]) == []
  end

  test "split single item list expect single item" do
    assert Problem11ModifiedRunLengthEncoding.runLengthEncoding([:a]) == [:a]
  end

  test "encode longer string" do
    assert Problem11ModifiedRunLengthEncoding.runLengthEncoding([1,1,1,1,2,3,3,1,1,4,5,5,5,5]) == [[4,1],2,[2,3],[2,1],4,[4,5]]
  end
end
