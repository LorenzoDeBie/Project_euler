=begin Problem
A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end Problem
=cut

$num1 = 999; $num2 = 999;

while($num2 != 0) {
    $num1 = 999;
    while($num1 != 0) {
        # Calculate new number
        my $possiblePalindrome = $num1 * $num2;
        # Split into array of characters
        my @charArr = split "",$possiblePalindrome;
        # Test number for palindrome
        while($charArr[0] == $charArr[-1] && scalar @charArr) {
            # remove last char
            pop @charArr;
            #remove first char
            shift @charArr;
            
        }
        if(!(scalar @charArr)) {
            # We have a palindrome!
            $palindromes{$possiblePalindrome} = undef;
        }
        $num1--;
    }
    $num2--;
}

@arr = keys %palindromes;
@sortedarr = sort {$a <=> $b} @arr;
$first = pop @sortedarr;
print $first;

