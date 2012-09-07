use strict;
use warnings;

use Test::More;
BEGIN {
	use_ok('romannum', qw(romannumber));
}

#test1
is(romannumber('I'), 1, 'I print 1');

done_testing();

exit;