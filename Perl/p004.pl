=begin Problem
A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end Problem
=cut

$num1 = 999; $num2 = 999;

for $num2 (100..999) {
    for $num1 (100..999) {
        # Calculate new number
        my $possiblePalindrome = $num1 * $num2;
        # Split into array of characters
        my @charArr = split "",$possiblePalindrome;
        # Test number for palindrome
        if($possiblePalindrome == reverse $possiblePalindrome) {
             $palindromes{$possiblePalindrome} = undef;
        }
    }
}

@arr = keys %palindromes;
@sortedarr = sort {$a <=> $b} @arr;
$first = pop @sortedarr;
print $first;

