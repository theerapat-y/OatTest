use strict;
use warnings;

use Test::More;

BEGIN {
	use_ok('RomanNumber', qw(convertnumber));
}

#test1
is(RomanNumber::convertnumber('I'), 1, 'I print 1');

done_testing();