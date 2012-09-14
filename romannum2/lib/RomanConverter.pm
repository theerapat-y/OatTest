package RomanConverter;

use strict;
use warnings;
use RomanNumeral;

use Sub::Exporter -setup => { exports => [ qw(convertnumber) ] };

=head1 NAME

RomanConverter - module

=head1 DESCRIPTION

Module use as converter

=head1 METHODS

=cut

=head2 convertnumber

call RomanNumeral to convert input roman number to decimal.

=cut

sub convertnumber {
	my $roman_num = shift;
    my $numeral = RomanNumeral->new();

    return $numeral->convert_decimal($roman_num);
}

=head1 AUTHOR

Theerapat Yimsirikul,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;