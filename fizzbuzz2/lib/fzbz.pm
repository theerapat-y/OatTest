#!/usr/bin/perl
package fzbz;

use strict;
use warnings;

sub fizzbuzz {
	my $num = $_[0];
	my $is_fizz = ($num % 3 == 0);
	my $is_buzz = ($num % 5 == 0);
	return 'buzz' if $is_buzz;
	return 'fizz' if $is_fizz;
	return shift;
}

1;