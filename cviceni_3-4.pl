#!/usr/bin/perl -w

### Napiste program, kteremu uzivatel zada koeficienty kvadraticke rovnice a^2 + bx + c = 0 a vysledkem budou koreny dane rovnice. 

use strict;
use warnings;

print "Zadajte koeficient [a]:";
my $a = <>;chomp($a);
print "Zadajte koeficient [b]:";
my $b = <>;chomp($b);
print "Zadajte koeficient [c]:";
my $c = <>;chomp($c);
print "\n\n";
print "Kadraticka rovnika na vypocet ma tvar:\n";
print $a . "^2 + " . $b . "x + " . $c . " = 0\n\n";

if ( (($b**2)-(4*$a*$c)) < 0 ) {print "Kvadraticka rovnica nema ziadne realne riesenie.";}
else {
	my $x1; my $x2;
	$x1 = ((-1*$b)+(sqrt(($b**2)-(4*$a*$c))))/(2*$a);
	$x2 = ((-1*$b)-(sqrt(($b**2)-(4*$a*$c))))/(2*$a);
	print "Riesenie kvadratickej rovnice:\n";
	print "$x1" . " | ";
	print "$x2\n";
	}

