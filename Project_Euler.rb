# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# int multiple_sum(num) {
#     int multiple = 0;
#
#     for (int i = num; i > 0; i--) {
#         if (i % 15 == 0) {
#             multiple += i;
#         }
#     }
#
#     return multiple;
# }

def mult(num)
    multiple = 0;

    num -= 1

    while num > 0

        if num % 3 == 0 || num % 5 == 0
            puts "We add #{num} + #{multiple} and get: "
            multiple += num
            puts multiple
        end

        num -= 1
    end

    puts "Final sum: #{multiple}"
end

mult(1000)
