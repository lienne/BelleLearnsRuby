puts "How old are you? " # puts inserts a new line at the end, while print does not
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} years old, #{height} feet tall, and weigh #{weight} lbs."

# chomp is the method to remove trailing new line character, i.e. '\n'
# from the string.
# Whenever 'gets' is used to take input from user it appends a new line
# character '\n' at the end of the string. So to remove '\n', chomp is used.

# How do I get a number from someone so I can do math?
# That's a little advanced, but try gets.chomp.to_i which says,
# "Get a string from the user, chomp off the \n, and convert it to an integer."
