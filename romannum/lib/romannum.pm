use strict;
use warnings;

sub romannumber {
	my @num = split(//, shift);
	my $result;
	for my $char (@num)
	{
		$result += convertnum($char);
	}

	return $result;
}

sub convertnum {
	my $number = shift;
	return 1 if $number eq 'I';
	return 5 if $number eq 'V';
	return 10 if $number eq 'X';
	return 50 if $number eq 'L';
	return 100 if $number eq 'C';
	return 500 if $number eq 'D';
	return 1000 if $number eq 'M';
}

1;