=begin Problem
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end Problem
=cut

# Solved using Sieve of Eratosthenes

$sum = 0;

for(1..2000000) {
    $numbers[$_] = undef;
}

while (($index, $value) = each @numbers) {
    next if defined $value or $index == 0 or $index == 1;
    $sum += $index;
    for($test = $index; $test <= 2000000; $test += $index) {
        $numbers[$test] = 1;
    }
}

print $sum;