defmodule Problem19RotateNLeftTest do
  use ExUnit.Case, async: true
  doctest Problem19RotateNLeft

  test "empty list expect empty list" do
    assert Problem19RotateNLeft.rotate([],2) == []
  end

  test "rotate list one place left" do
    assert Problem19RotateNLeft.rotate([1,2],1) == [2,1]
  end

  test "rotate list 3 items left" do
    assert Problem19RotateNLeft.rotate([1,2,3,4,5,6],3) == [4,5,6,1,2,3]
  end
end
