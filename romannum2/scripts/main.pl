#!/usr/bin/perl

use strict;
use warnings;

use RomanConverter qw(convertnumber);

my $ans = convertnumber('MCMXCIX');
print $ans . "\n";