defmodule Problem06PalindromeTest do
  use ExUnit.Case, async: true
  doctest Problem06Palindrome

  test "Palindrome Empty List is false" do
    assert Problem06Palindrome.palindrome([]) == false
  end

  test "Palindrome single item is true" do
    assert Problem06Palindrome.palindrome([2]) == true
  end

  test "Palindrome two items is true" do
    assert Problem06Palindrome.palindrome([2,2]) == true
  end

  test "Palindrome two items is false" do
    assert Problem06Palindrome.palindrome([1,2]) == false
  end

  test "Palindrome three items is false" do
    assert Problem06Palindrome.palindrome([1,2,2]) == false
  end

  test "Palindrome three items is true" do
    assert Problem06Palindrome.palindrome([1,2,1]) == true
  end

  test "Palindrome 5 items" do
    assert Problem06Palindrome.palindrome(["x","a","m","a","x"]) == true
  end
end
