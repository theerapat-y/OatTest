#!usr/bin/perl -w
use strict; 
use warnings;

open FILE, "testocr1" or die $!;
my @entry = <I>;
close inputfile or die $!;

my $st;
my $num = 0;

for (1..9) {
    for my $line (@entry) {
        $st .= substr $line,$num,3;
    }

    extractnum($st);
    $num += 3;
    $st = "";
}

print "\n";

sub extractnum {
    my ( $extrc ) = @_;

    my @numarray = (" _ | ||_|   ",
                "     |  |   ",
                " _  _||_    ",
                " _  _| _|   ",
                "   |_|  |   ",
                " _ |_  _|   ",
                " _ |_ |_|   ",
                " _   |  |   ",
                " _ |_||_|   ",
                " _ |_| _|   ");

    for (my $cnt = 0; $cnt < 10; $cnt++) {
        if (@numarray eq $extrc) {
            print $cnt;
        }
    }
}