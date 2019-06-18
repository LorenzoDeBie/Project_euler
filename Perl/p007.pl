=begin Problem
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
 we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end Problem
=cut
$counter = 6;
$number = 13;

while($counter != 10001) {
    $number += 2;
    $counter++ if isPrime($number);
}

print $number;

sub isPrime() {
    for(2..($_[0] / 2)) {
        return 0 unless $_[0] % $_;
    }
    return 1;
}