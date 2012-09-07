use strict;
use warnings;

sub romannumber {
	my $num = shift;
	return 1 if $num eq 'I';
	return 5 if $num eq 'V';
	return 10 if $num eq 'X';
	return 50 if $num eq 'L';
	return 100 if $num eq 'C';
	return 500 if $num eq 'D';
	return 1000 if $num eq 'M';
}

1;