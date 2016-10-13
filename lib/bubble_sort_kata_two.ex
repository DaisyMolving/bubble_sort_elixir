defmodule BubbleSortKata do

  def sort(numbers) do
    traverse_list(numbers, Enum.count(numbers) - 1)
  end
  
  def traverse_list(numbers, traversals) when traversals <= 1, do: sort(numbers, [])
  def traverse_list(numbers, traversals) do
    traverse_list(sort(numbers, []), traversals - 1)
  end

  def sort([current_number | []], sorted_numbers), do:  sorted_numbers ++ [current_number]
  def sort([current_number | [next_number | remaining_numbers]], sorted_numbers) do
    [current_number, next_number] = swap(current_number, next_number)
    sort([next_number | remaining_numbers], sorted_numbers ++ [current_number])
  end

  def swap(current_number, next_number) do
    if current_number <= next_number do
      [current_number, next_number]
    else
      [next_number, current_number]
    end
  end
end
