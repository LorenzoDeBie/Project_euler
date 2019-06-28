=begin Problem
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end Problem
=cut

$max = 999999;



push @startNumbers, 0 for(0..$max);
@startNumbers[1] = 1;
@lengths = @startNumbers;

# loop over all the starting numbers
STARTNUMBER: for (my $startNumber = 2; $startNumber <= $max; $startNumber++) {
    my @sequence = ($startNumber);
    my $currentLength = 1;
    #print "new sequence: $startNumber";
    my $nextNumber = $startNumber;
    while($nextNumber != 1){
        # calculate Next number
        $nextNumber = ($nextNumber % 2) ? (3 * $nextNumber + 1) : ($nextNumber / 2);
        push @sequence, $nextNumber;
        #print " $nextNumber";
        if($nextNumber <= $max && $startNumbers[$nextNumber] != 0) {
            # I already know the length of this number!
            $currentLength += $startNumbers[$nextNumber];
            #save length of each number in sequence
            #print "\nCalculated lengths of";
            while(scalar @sequence) {
                my $last = shift @sequence;
                $startNumbers[$last] = $currentLength unless $last >= $max;
                #print " $last($currentLength)";
                $currentLength--; 
            }
            #print "\n";
            print "startNumber = $startNumber\n"if($startNumber % 10000 == 0);
            next STARTNUMBER;
        }
        else {
            # I don't know the length of this number yet!
            $currentLength++;
        }
    }
    print "startNumber = $startNumber\n"if($startNumber % 10000 == 0);
}

$maxLength = 1;
for(my $counter = 1; $counter <= $max; $counter++) {
    #print "$counter($startNumbers[$counter]) ";
    $maxLength = $counter if $startNumbers[$counter] > $startNumbers[$maxLength];
}

print "Longest sequence: $maxLength($startNumbers[$maxLength])\n";