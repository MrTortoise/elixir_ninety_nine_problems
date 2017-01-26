defmodule Problem07FlattenTest do
  use ExUnit.Case, async: true
  doctest Problem07Flatten

  test "Flatten empty list expect empty list" do
    assert Problem07Flatten.flatten([]) == []
  end

end
