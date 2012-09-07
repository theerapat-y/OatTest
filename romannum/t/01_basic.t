use strict;
use warnings;

use Test::More;
BEGIN {
	use_ok('romannum', qw(romannumber));
}

#test1
is(romannumber('I'), 1, 'I print 1');

#test2
is(romannumber('V'), 5, 'V print 5');

#test3
is(romannumber('X'), 10, 'X print 10');
is(romannumber('L'), 50, 'L print 50');
is(romannumber('C'), 100, 'C print 100');
is(romannumber('D'), 500, 'D print 500');
is(romannumber('M'), 1000, 'M print 1000');

#test4
is(romannumber('XII'), 12, 'XII print 12');
is(romannumber('DCXV'), 615, 'DCXV print 615');

done_testing();

exit;