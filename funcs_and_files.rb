input_file = ARGV.first

def print_all(f)
    puts f.read
end

def rewind(f)
    f.seek(0)
end

def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets.chomp}"
end

current_file = open(input_file)

puts "First let's print the whole file:\n"

print_all(current_file)
puts "\n"

puts "Now let's rewind, kind of like a tape."

rewind(current_file)
puts "\n"

puts "Let's print three lines: "

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

#  file in Ruby is kind of like an old tape drive on a mainframe or maybe a DVD player. It has a "read head," and you can "seek" this read head around the file to positions, then work with it there. Each time you do f.seek(0) you're moving to the start of the file. Each time you do f.readline() you're reading a line from the file and moving the read head to right after the \n that ends that line.
