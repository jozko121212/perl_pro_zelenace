#!/usr/bin/perl

use strict;
use warnings;

my @vstup = ();
foreach my $i (1..3) {
	print "zadaj parameter $i: ";
	$vstup[$i-1] = <STDIN>; chomp($vstup[$i-1]);
}

@vstup[1,2] = @vstup[2,1];
my $operand = $vstup[1];
if ( $operand eq "+" ) {my $vysledok = $vstup[0] + $vstup[2];print "Vysledok je: $vysledok\n";}
if ( $operand eq "-" ) {my $vysledok = $vstup[0] - $vstup[2];print "Vysledok je: $vysledok\n";}
if ( $operand eq "*" ) {my $vysledok = $vstup[0] * $vstup[2];print "Vysledok je: $vysledok\n";}
if ( $operand eq "/" ) {my $vysledok = $vstup[0] / $vstup[2];print "Vysledok je: $vysledok\n";}
