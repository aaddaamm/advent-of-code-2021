# file_data = File.read("input.txt").split

previous_number = nil
count = 0

File.foreach("input.txt") { |line|
  line_as_number = line.to_i

  if !previous_number.nil? && line_as_number > previous_number
    count += 1
  end

  previous_number = line_as_number
}

puts "final count is #{count}"
