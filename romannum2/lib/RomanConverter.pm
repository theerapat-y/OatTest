package RomanConverter;

use strict;
use warnings;
use RomanNumeral;

use Sub::Exporter -setup => { exports => [ qw(convertnumber) ] };

sub convertnumber {
	my $roman_num = shift;
    my $numeral = RomanNumeral->new({ roman_number => $roman_num });

    return $numeral->convert_decimal;
}

1;