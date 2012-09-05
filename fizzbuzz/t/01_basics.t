#!usr/bin/perl
use strict;
use warnings;

use Test::More 'no_plan';# tests => 1;
use_ok('fizzbuzz::fb');

my $formatter = fizzbuzz::fb->new;
isa_ok($formatter, 'fizzbuzz::fb');
