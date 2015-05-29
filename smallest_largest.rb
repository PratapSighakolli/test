arr = [20, 45, 39, 78, 66, 12, 99, 18]

smallest_value = arr[0]
largest_value = arr[0]

arr_length = arr.length
i = 1
while i < arr_length
  if arr[i] > largest_value
    largest_value = arr[i]
  elsif arr[i] < smallest_value
    smallest_value = arr[i]
  end
  i = i + 1
end
puts largest_value
puts "**********"
puts smallest_value