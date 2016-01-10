#!/usr/bin/perl

use strict;
use warnings;

my $input_file = $ARGV[0];
my %words = ();

open(IFILE,$input_file);
while (my $line=<IFILE>) {
	chomp($line);
	$line = "\L$line\U";
	my @line_f = split(/[\W\s]/,$line);
	foreach my $i (@line_f) {
		if (exists($words{$i})) { $words{$i}++; }
		elsif ($i =~ /\b\w+\b/) { $words{$i} = 1; }
	}
}

foreach my $word (sort {$words{$b} <=> $words{$a} } keys %words) {
	print "$word: $words{$word}\n";
}
