use strict;
use warnings;

use Test::More;
use fzbz;

use_ok('fzbz');

is(fzbz::fizzbuzz(1), 1, '1 return 1');

is(fzbz::fizzbuzz(2), 2, '2 return 2');

done_testing();

exit;