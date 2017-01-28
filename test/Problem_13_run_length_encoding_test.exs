defmodule Problem13RunLengthEncodingTest do
  use ExUnit.Case, async: true
  doctest Problem13RunLengthEncoding

  test "empty list expect empty list" do
    assert Problem13RunLengthEncoding.encode([]) == []
  end

  test "split single item list expect single item" do
    assert Problem13RunLengthEncoding.encode([:a]) == [:a]
  end

  test "encode longer string" do
    assert Problem13RunLengthEncoding.encode([1,1,1,1,2,3,3,1,1,4,5,5,5,5]) == [[4,1],2,[2,3],[2,1],4,[4,5]]
  end

  test "next block single item list" do
    assert Problem13RunLengthEncoding.nextBlock([1]) == []
  end

  test "next block list" do
    assert Problem13RunLengthEncoding.nextBlock([1,1,1,1,2,2,2]) == [2,2,2]
  end

  test "next block empty list" do
    assert Problem13RunLengthEncoding.nextBlock([]) == []
  end
end
