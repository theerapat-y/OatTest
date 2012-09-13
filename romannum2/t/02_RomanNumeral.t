use strict;
use warnings;

use Test::More;
use Test::Moose;
use RomanNumeral;

BEGIN {
	use_ok('RomanNumeral', qw(convert_decimal));
}

my $numeral = RomanNumeral->new();

meta_ok($numeral, "RomanNumeral has a ->meta");

#test1
is($numeral->convert_decimal('XL'), 40, 'XL print 40');

is($numeral->convert_decimal('LXXIV'), 74, 'LXXIV print 74');


done_testing();