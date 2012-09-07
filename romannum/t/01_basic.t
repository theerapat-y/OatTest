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

done_testing();

exit;