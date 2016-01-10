#!/usr/bin/perl

use strict;
use warnings;

open(SUBOR1, "cviceni_6-8.txt") or die "Nemozem otvorit subor\n";
my @ludia = ();
while (my $riadok = <SUBOR1>) {
	chomp($riadok);
	$riadok =~ s/\s*(\w*)\s+(\w*)/$2 $1/gi;
	push(@ludia,$riadok);
}

foreach my $i (sort(@ludia)) {print "$i\n";}
