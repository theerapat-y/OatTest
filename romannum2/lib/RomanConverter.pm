package RomanConverter;

use strict;
use warnings;
use RomanNumeral;

use Sub::Exporter -setup => { exports => [ qw(convertnumber) ] };

sub convertnumber {
	my $roman_num = shift;
    my $numeral = RomanNumeral->new();

    return $numeral->convert_decimal($roman_num);
}

1;