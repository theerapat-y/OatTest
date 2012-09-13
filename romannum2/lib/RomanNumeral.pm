package RomanNumeral;

use Moose;
use Sub::Exporter -setup => { exports => [ qw(convert_decimal) ] };

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

1;