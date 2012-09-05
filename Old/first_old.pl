#!usr/bin/perl

$! = "error opening file";

open file, "testocr1" or die $!;
my @lines = <file>;
close file or die $!;

my $st;
my $num = 0;
for (1..9)
{
	for $line(@lines)
	{
		$st .= substr $line,$num,3;
	}
	extractnum($st);
	$num += 3;
	$st = "";
}

sub extractnum
{
	$zer = " _ | ||_|   ";
	$one = "     |  |   ";
	$two = " _  _||_    ";
	$thr = " _  _| _|   ";
	$fou = "   |_|  |   ";
	$fiv = " _ |_  _|   ";
	$six = " _ |_ |_|   ";
	$sev = " _   |  |   ";
	$eig = " _ |_||_|   ";
	$nin = " _ |_| _|   ";

	if($_[0] eq $zer)
	{
		print "0";
	}
	elsif($_[0] eq $one)
	{
		print "1";
	}
	elsif($_[0] eq $two)
	{
		print "2";
	}
	elsif($_[0] eq $thr)
	{
		print "3";
	}
	elsif($_[0] eq $fou)
	{
		print "4";
	}
	elsif($_[0] eq $fiv)
	{
		print "5";
	}
	elsif($_[0] eq $six)
	{
		print "6";
	}
	elsif($_[0] eq $sev)
	{
		print "7";
	}
	elsif($_[0] eq $eig)
	{
		print "8";
	}
	elsif($_[0] eq $nin)
	{
		print "9";
	}
}