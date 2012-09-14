package RomanNumeral;

use Moose;
use Sub::Exporter -setup => { exports => [ qw(convert_decimal) ] };

=head1 NAME

RomanNumeral - Moose class

=head1 DESCRIPTION

Roman numeral object

=head1 METHODS

=cut

=head2 convert_decimal

convert roman number to decimal (arabic) number.

=cut

sub convert_decimal {
	my ($self, $roman_number) = @_;
	my @roman_char = split(//, $roman_number);
	my @decimal_num;
	my $answer;

	foreach my $char (@roman_char) {
		push(@decimal_num, $self->_convert_single($char));
	}

	foreach my $decimal (@decimal_num) {
		$answer += $decimal; 
	}

	for (my $i = 0; $i < $#decimal_num; $i++) {
		if($decimal_num[$i] < $decimal_num[$i + 1]) {
			$answer -= 2 * $decimal_num[$i];
		}
	}

	return $answer;
}

=head2 _convert_single

convert single roman number to decimal number.

=cut

sub _convert_single {
	my ($self, $input_number) = @_;
	return 1 if $input_number eq 'I' || $input_number eq 'i';
	return 5 if $input_number eq 'V' || $input_number eq 'v';
	return 10 if $input_number eq 'X' || $input_number eq 'x';
	return 50 if $input_number eq 'L' || $input_number eq 'l';
	return 100 if $input_number eq 'C' || $input_number eq 'c';
	return 500 if $input_number eq 'D' || $input_number eq 'd';
	return 1000 if $input_number eq 'M' || $input_number eq 'm';
}

=head1 AUTHOR

Theerapat Yimsirikul,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;