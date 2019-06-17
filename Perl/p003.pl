=begin Problem
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end Problem
=cut

$number = 600851475143;

for(1..$number) {
    # Check if we have a factor
    if(!($number % $_)) {
        # We want the larger factors first
        my $factor = $number / $_;
        my $isPrime = 1;
        # test if the factor is a prime number;
        for(2..($factor / 2)) {
            if(!($factor % $_)) {
                # not a prime
                $isPrime = 0;
                last;
            }
        }
        # Print answer and stop execution if we have the answer
        if($isPrime) {
           print $factor;
           last; 
        }
    }
}