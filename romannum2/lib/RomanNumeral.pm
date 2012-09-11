package RomanNumeral;

use strict;
use warnings;

use Moose;

has 'roman_number' => (is => 'rw', isa => 'Str');

sub convert_decimal {
	my $self = shift;
	my @roman_char = split(//, $self->roman_number);
	my $answer;

	foreach my $char (@roman_char) {
		$answer += convert_single($char);
	}

	return $answer;
}

sub convert_single {
	my $input_number = shift;
	return 1 if $input_number eq 'I';
	return 5 if $input_number eq 'V';
	return 10 if $input_number eq 'X';
	return 50 if $input_number eq 'L';
	return 100 if $input_number eq 'C';
	return 500 if $input_number eq 'D';
	return 1000 if $input_number eq 'M';
}

1;