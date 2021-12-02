file_data = File.read("input.txt").split("\n")
###### Part one

depth = 0
horizontal_position = 0

file_data.each {|line|
  split_line = line.split
  direction = split_line[0]
  value = split_line[1].to_i

  case direction
    when "forward"
      horizontal_position += value
    when "down"
      depth += value
    when "up"
      depth -= value
  end
}

puts "result of part one distance moved is #{depth * horizontal_position}"

###### Part two

depth = 0
horizontal_position = 0
aim = 0

file_data.each {|line|
  split_line = line.split
  direction = split_line[0]
  value = split_line[1].to_i

  case direction
    when "forward"
      horizontal_position += value
      depth += (aim * value)
    when "down"
      aim += value
    when "up"
      aim -= value
  end
}

puts "result of part two distance moved is #{depth * horizontal_position}"