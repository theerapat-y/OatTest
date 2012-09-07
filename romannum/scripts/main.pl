#!/usr/bin/perl

use strict;
use warnings;

use romannum qw(romannumber);

my $ans = romannumber('MCMXCIX');
print $ans . "\n";