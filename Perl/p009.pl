=begin Problem
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end Problem
=cut

# we will try to calculate the triplets using euclid's formula

$m = 2;

while(1) {
    for $n (1..($m - 1)) {
        my $a = $m**2 - $n**2;
        my $b = 2*$m*$n;
        my $c = $m**2 + $n**2;

        my $sum = $a + $b + $c;
        if($sum == 1000){
            print $a*$b*$c;
            exit(0);
        }
        #die("Sum greater then 1000!")if($sum > 1000);
    }
    $m++;
}