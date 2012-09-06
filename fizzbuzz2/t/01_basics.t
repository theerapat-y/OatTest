use strict;
use warnings;

use Test::More;
#use fzbz qw(fizzbuzz);
BEGIN {
	use_ok('fzbz', qw(fizzbuzz));
};

#test1
is(fizzbuzz(1), 1, '1 return 1');

#test2
is(fizzbuzz(2), 2, '2 return 2');

#test3 fizz
is(fizzbuzz(3), 'fizz', '3 return fizz');
is(fizzbuzz(6), 'fizz', '6 return fizz');

#test4 buzz
is(fizzbuzz(5), 'buzz', '5 return buzz');
is(fizzbuzz(10), 'buzz', '10 return buzz');

#test5 fizzbuzz
is(fizzbuzz(15), 'fizzbuzz', '15 return fizzbuzz');
is(fizzbuzz(30), 'fizzbuzz', '30 return fizzbuzz');

done_testing();

exit;