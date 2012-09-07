use strict;
use warnings;

sub romannumber {
	my @romannum = split(//, shift);
	my @arabicnum;
	my $result = 0;

	foreach my $romanchar (@romannum) {
		push(@arabicnum, convertnum($romanchar));
	}

	foreach my $arabicchar (@arabicnum) {
		$result += $arabicchar;
	}

	for (my $i = 0; $i < $#romannum; $i++) {
		if($arabicnum[$i] < $arabicnum[$i + 1]) {
			$result-= 2 * $arabicnum[$i];
		}
	}

	return $result;
}

sub convertnum {
	my $rmnumber = shift;
	return 1 if $rmnumber eq 'I';
	return 5 if $rmnumber eq 'V';
	return 10 if $rmnumber eq 'X';
	return 50 if $rmnumber eq 'L';
	return 100 if $rmnumber eq 'C';
	return 500 if $rmnumber eq 'D';
	return 1000 if $rmnumber eq 'M';
}

1;