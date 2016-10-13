arr = [38, 12, 9, 40]

def search_array(arr, x)
  index = 0
  arr.each do |num|
    if x == num
      return index
    end
    index += 1
  end
    return nil
end

search_array(arr, 6)

def fib(num)
  index = 1
  array = [0, 1]
  until array.length == num
    array << array[index - 1] + array[index]
    index += 1
  end
  return array
end

if fib(100)[-1] == 218922995834555169026
  puts TRUE
end

#Bubble sort psuedocode
#Take the first value, and compare it to the value next to it.
  #If the value is higher, it swaps their order and moves on and compares it the following value.
  #This happens until a swap does not need to be made.
#Starts over with the new first value, and repeats the above steps until all swaps have been made.

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array = [4, 2, 8, 7]
