=begin Problem
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end Problem
=cut

@numbers = 1..20;

$num = 2520;
while(1) {
    last if isDivisible($num);
    $num +=20;
}

print $num;

sub isDivisible() {
    for (@numbers) {
        if($_[0] % $_) {
            return 0;
        }
    }
    return 1;
}