=begin Problem
If we list all the natural numbers below 10 that are multiples of 3 or 5,
 we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end Problem
=cut

# all numbers below 1000
for(1..999) {
    # check if number is divisible by 3 or 5
    if(!($_ % 3)) {
        $sum += $_;
    }
    elsif(!($_ % 5)) {
        $sum += $_;
    }
}

print $sum;
