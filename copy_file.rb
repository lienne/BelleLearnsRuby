from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}."

# We can do these two on one line, how?
in_file = open(from_file)
indata = in_file.read
# in_file = open(from_file).read ? Doesn't work lol


puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close
in_file.close

# Try to make this file shorter!
# One line is possible O.O how?
