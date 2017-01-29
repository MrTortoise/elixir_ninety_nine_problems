defmodule Problem22GenerateIntsInRangeTest do
  use ExUnit.Case, async: true
  doctest Problem22GenerateIntsInRange

  test "range of 1 to 1" do
    assert Problem22GenerateIntsInRange.generateRange(1,1) == [1]
  end

  test "range of 1 to 5" do
    assert Problem22GenerateIntsInRange.generateRange(1,5) == [1,2,3,4,5]
  end

  test "range of -3 to 8" do
    assert Problem22GenerateIntsInRange.generateRange(-3,8) == [-3,-2,-1,0,1,2,3,4,5,6,7,8]
  end

end
