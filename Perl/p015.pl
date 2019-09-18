=begin Problem
Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, 
there are exactly 6 routes to the bottom right corner.
How many such routes are there through a 20×20 grid?
=end Problem
=cut

# this problem can be solved by creating a matrix of 21x21
# first row and column are only 1
# other numbers are the sum of number above and to the left
# solution is the bottom right number of the matrix
push @firstrow, "1" for(0..20);
print "row 0: ", (join " ", @firstrow), "\n";
push my @matrix, \@firstrow;
for my $row (1..20) {
    print "now calculating row $row\n";
    push my @nextrow, 1;
    push @matrix, \@nextrow;
    for my $column (1..20) {
        push @nextrow, ($matrix[$row][$column - 1] + $matrix[$row - 1][$column]);
    }
    print "row $row: ", (join " ", @nextrow), "\n";
}

print $matrix[20][20];
