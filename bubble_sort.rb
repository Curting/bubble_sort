# bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(numbers)
  n = numbers.length
  loop do
    swapped = false

    (n-1).times do |i|
      if numbers[i] > numbers[i+1]
        numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
        swapped = true
      end
    end

    break if not swapped
  end

  numbers
end

# > bubble_sort_by(["hi","hello","hey"]) do |left,right|
# >   left.length - right.length
# > end
# => ["hi", "hey", "hello"]

def bubble_sort_by(array)
  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if yield(array[i], array[i+1]) > 0
        array[i], array[i+1] = array[i+1], array[i]
      end
    end

    break if not swapped
  end
  array
end