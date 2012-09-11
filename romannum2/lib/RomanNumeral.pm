package RomanNumeral;

use strict;
use warnings;

use Moose;

has 'roman_number' => (is => 'rw', isa => 'Str');

sub convert_decimal {
	my $self = shift;
	return 1 if $self->roman_number eq 'I';
	return 5 if $self->roman_number eq 'V';
	return 10 if $self->roman_number eq 'X';
	return 50 if $self->roman_number eq 'L';
	return 100 if $self->roman_number eq 'C';
	return 500 if $self->roman_number eq 'D';
	return 1000 if $self->roman_number eq 'M';
}

1;