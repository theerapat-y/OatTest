#!/usr/bin/perl
use strict;
use warnings;

use Test::More;

sub run_tests {
    is(fizzbuzz(1), 1, 'speak number by 1');
    is(fizzbuzz(2), 2, 'speak number by 2');

    done_testing(2);

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
	return "$num";
}

run_tests if $ENV{HARNESS_ACTIVE};

main;