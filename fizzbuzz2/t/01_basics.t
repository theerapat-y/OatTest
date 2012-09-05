use strict;
use warnings;

use Test::More;
use fzbz;

use_ok('fzbz');

is(fzbz::fizzbuzz(1), 1, '1 return 1');

is(fzbz::fizzbuzz(2), 2, '2 return 2');

is(fzbz::fizzbuzz(3), 'fizz', '3 return fizz');
is(fzbz::fizzbuzz(6), 'fizz', '6 return fizz');

done_testing();

exit;