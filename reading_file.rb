# Receive filename as parameter passed in when running program
filename = ARGV.first

# Open file passed in as parameter to this program
txt = open(filename)

# Prints out contents of file
puts "Here's your file #{filename}:"
print txt.read # .read is a function that you call on the txt variable
txt.close()
print "\n"

# Takes in filename from the user, directly from command line prompt
print "Type the filename again: "
file_again = $stdin.gets.chomp # gets input from user & removes EOL char

# Open file
txt_again = open(file_again)

# Print file
print txt_again.read
txt_again.close()

#  Commands to remember:
# close
# read
# readline -- Reads just one line of a text file
# truncate -- Empties the file. Watch out if you care about the file
# write('stuff') -- Writes "stuff" to the file
# seek(0) -- Move the read/write location to the beginning of the file
