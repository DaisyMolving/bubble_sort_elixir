defmodule BubbleSortKataTest do
  use ExUnit.Case

  test "a list of two numbers that is already ascending does not change" do
    assert BubbleSortKata.sort([1, 2]) == [1, 2]
  end

  test "a list of two numbers are are descending are swapped" do
    assert BubbleSortKata.sort([2, 1]) == [1, 2]
  end

  test "swaps two numbers in a larger list if not ascending" do
    assert BubbleSortKata.sort([2, 1, 3]) == [1, 2, 3]
    assert BubbleSortKata.sort([1, 2, 3, 5, 4]) == [1, 2, 3, 4, 5]
  end

  test "traverses list enough times that completely descending list will become ascending" do
    assert BubbleSortKata.sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
  end

end
