defmodule Problem07FlattenTest do
  use ExUnit.Case, async: true
  doctest Problem07Flatten

  test "Flatten empty list expect empty list" do
    assert Problem07Flatten.flatten([]) == []
  end

  test "Flatten single item list expect singel item list" do
    assert Problem07Flatten.flatten([:a]) == [:a]
  end

  test "Flatten multiple value list expect same list" do
    assert Problem07Flatten.flatten([1,2,3,4,5]) == [1,2,3,4,5]
  end

  test "Flatten multiple list list into one list" do
    assert Problem07Flatten.flatten([1,[2,[3,[4,[5]]]]]) == [1,2,3,4,5]
  end

end
