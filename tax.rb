print "Give me some money: $"
money = gets.chomp.to_f
tax = money * 0.1

puts "The tax on that amount is #{tax}."
