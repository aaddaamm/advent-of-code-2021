## Part 1
file_data = File.read("input.txt").split

previous_number = nil
count = 0

file_data.each { |line|
  line_as_number = line.to_i

  if !previous_number.nil? && line_as_number > previous_number
    count += 1
  end

  previous_number = line_as_number
}

puts "final count for part1 is #{count}"


## Part 2
file_data_copy = file_data.collect(&:to_i)

previous_sum = nil
sum_count = 0

file_data.each_index { |i|
  current_group = file_data_copy.take(3)
  current_sum = current_group.sum

  if !previous_sum.nil? && current_group.length >= 3 && current_sum > previous_sum
    sum_count += 1
  end

  previous_sum = current_sum
  file_data_copy = file_data_copy.drop(1)
}

puts "final count for Part2 is #{sum_count}"
