#!/usr/bin/perl
use strict;
use warnings;

use Test::More;

sub run_tests {
    is(fizzbuzz(1), 1, 'speak number by 1');
    is(fizzbuzz(2), 2, 'speak number by 2');

    done_testing(8);

    exit;
}

run_tests if $ENV{HARNESS_ACTIVE};