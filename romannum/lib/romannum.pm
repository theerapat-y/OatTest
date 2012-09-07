package romannum;

use strict;
use warnings;

use Sub::Exporter -setup => { exports => [ qw(romannumber) ] };


sub romannumber {
	my @romannum = split(//, shift);
	my @arabicnum;
	my $result;

	foreach my $romanchar (@romannum) {
		push(@arabicnum, convertnum($romanchar));
	}

	foreach my $arabicchar (@arabicnum) {
		$result += $arabicchar;
	}

	for (my $i = 0; $i < $#romannum; $i++) {
		if($arabicnum[$i] < $arabicnum[$i + 1]) {
			$result -= 2 * $arabicnum[$i];
		}
	}

	return $result;
}

sub convertnum {
	my $rmnumber = shift;
	return 1 if $rmnumber eq 'I' || $rmnumber eq 'i';
	return 5 if $rmnumber eq 'V' || $rmnumber eq 'v';
	return 10 if $rmnumber eq 'X' || $rmnumber eq 'x';
	return 50 if $rmnumber eq 'L' || $rmnumber eq 'l';
	return 100 if $rmnumber eq 'C' || $rmnumber eq 'c';
	return 500 if $rmnumber eq 'D' || $rmnumber eq 'd';
	return 1000 if $rmnumber eq 'M' || $rmnumber eq 'm';
}

1;