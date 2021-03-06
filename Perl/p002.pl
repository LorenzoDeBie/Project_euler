=begin Problem
Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million,
 find the sum of the even-valued terms.
=end Problem
=cut
# First numbers of the sequence
$num1 = 1; $num2 = 2;
$max = 4000000;
while($num2 < $max) {
    # even number?
    if(!($num2 % 2)) {
        $sum += $num2;
    }
    $num1 = $num1 + $num2;
    last if $num1 > $max;
    if(!($num1 % 2)) {
        $sum += $num1;
    }
    $num2 = $num1 + $num2;
}

print $sum;