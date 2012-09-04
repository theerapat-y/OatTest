#!usr/bin/perl
use strict;
use warnings;

for (my $i = 1; $i <= 100; $i++) {
	if($i % (3 * 5) == 0 || ("$i" =~ /5/ && "$i" =~ /3/)) {
		print "FizzBuzz\n";
	}
	elsif($i % 5 == 0 || "$i" =~ /5/) {
		print "Buzz\n";
	}
	elsif($i % 3 == 0 || "$i" =~ /3/) {
		print "Fizz\n";
	}
	else {
		print "$i\n";
	}
}