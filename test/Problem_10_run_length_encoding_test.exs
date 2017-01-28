defmodule Problem10RunLengthEncodingTest do
  use ExUnit.Case, async: true
  doctest Problem10RunLengthEncoding

  test "empty list expect empty list" do
    assert Problem10RunLengthEncoding.runLengthEncoding([]) == []
  end

  test "split single item list expect single item" do
    assert Problem10RunLengthEncoding.runLengthEncoding([:a]) == [[1,:a]]
  end

  test "encode longer string" do
    assert Problem10RunLengthEncoding.runLengthEncoding([1,1,1,1,2,3,3,1,1,4,5,5,5,5]) == [[4,1],[1,2],[2,3],[2,1],[1,4],[4,5]]
  end
end
