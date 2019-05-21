the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in the_count
    puts "This is count #{number}"
end

# same as above, but in a more Ruby style
# this and the next one are the preferred way
# Ruby for-loops are written
fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax
change.each {|i| puts "I got #{i}"}

# we can also build lists, first start with an empty one
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
    puts "adding #{i} to the list."
    # pushes the i variable on the *end* of the list
    elements.push(i)
end

# Note on Range Operators:
# two dots ".." are inclusive of both numbers.
# three dots "..." exclude the higher bound number.\
# Ex.:
# (1..5) ===> 1, 2, 3, 4, 5
# (1...5) ===> 1, 2, 3, 4
# ('a'..'d') ===> 'a', 'b', 'c', 'd'

#now we can print them out too
elements.each {|i| puts "Element was: #{i}"}

# First for-loop in this file, but in a Ruby style:
the_count.each do |number|
    puts "This is count #{number} x2"
end

# Again:
the_count.each {|number| puts "This is count #{number} x3"}
