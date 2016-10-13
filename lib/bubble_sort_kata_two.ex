defmodule BubbleSortKata do

  def sort([current_number, next_number]) do
    swap(current_number, next_number)
  end

  def swap(current_number, next_number) do
    if current_number <= next_number do
      [current_number, next_number]
    else
      [next_number, current_number]
    end
  end
end
