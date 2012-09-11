use strict;
use warnings;

use Test::More;

BEGIN {
	use_ok('RomanConverter', qw(convertnumber));
}

#test1
is(convertnumber('I'), 1, 'I print 1');

#test2
is(convertnumber('V'), 5, 'V print 5');
is(convertnumber('X'), 10, 'X print 10');
is(convertnumber('L'), 50, 'L print 50');
is(convertnumber('C'), 100, 'C print 100');
is(convertnumber('D'), 500, 'D print 500');
is(convertnumber('M'), 1000, 'M print 1000');

#test3
is(convertnumber('LX'), 60, 'LX print 60');
is(convertnumber('MMXI'), 2011, 'MMXI print 2011');
is(convertnumber('CCCLV'), 355, 'CCCLV print 355');
is(convertnumber('MDCCCLXVI'), 1866, 'MDCCCLXVI print 1866');

done_testing();