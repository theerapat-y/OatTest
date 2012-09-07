use strict;
use warnings;

sub romannumber {
	my $num = shift;
	return 1 if $num eq 'I';
	return 5 if $num eq 'V';
}

1;