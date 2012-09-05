#!/usr/bin/perl
use strict;
use warnings;

use Test::More;

sub run_tests {
    is(fizzbuzz(1), 1, 'speak number by 1');
    is(fizzbuzz(2), 2, 'speak number by 2');

    is(fizzbuzz(3), "fizz", 'speak fizz by 3');
    is(fizzbuzz(6), "fizz", 'speak fizz by 6');

    done_testing(4);

    exit;
}

sub main {
	my $lim = int($ARGV[0] || 33);
	for (1..$lim) {
		print "$_: " . fizzbuzz($_) . "\n";
	}
}

sub fizzbuzz {
	my $num = $_[0];
	my $is_fizz = ($num % 3 == 0);
	return "fizz" if $is_fizz;
	return "$num";
}

run_tests if $ENV{HARNESS_ACTIVE};

main;