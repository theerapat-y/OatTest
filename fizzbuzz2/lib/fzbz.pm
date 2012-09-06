package fzbz;

use strict;
use warnings;

use Sub::Exporter -setup => { exports => [ qw(fizzbuzz) ] };

sub fizzbuzz {
	my $num = shift;
	my $is_fizz = ($num % 3 == 0);
	my $is_buzz = ($num % 5 == 0);
	return 'fizzbuzz' if $is_fizz && $is_buzz;
	return 'buzz' if $is_buzz;
	return 'fizz' if $is_fizz;
	return $num;
}

1;