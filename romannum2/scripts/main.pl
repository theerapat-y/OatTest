#!/usr/bin/perl

use strict;
use warnings;

use RomanConverter qw(convertnumber);

=head1 NAME

main

=head1 DESCRIPTION

Main script

=cut

open FILE, "scripts/sample01" or die $!;
my @entry = <FILE>;
close FILE or die $!;

foreach my $roman_input (@entry) {
	print convertnumber($roman_input) . "\n";
}