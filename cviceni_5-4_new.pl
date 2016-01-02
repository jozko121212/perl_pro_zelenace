#!/usr/bin/perl

use strict;
use warnings;

my @zasobnik = ();
my ($vstup, $vysledok);

print "Kalkulacka pre polsku reveznu notaciu\n";
do {
	print "vstup (prazdny znak ukonci vstup): ";
	$vstup = <STDIN>; chomp($vstup);
	if ($vstup eq "+") {
		$vysledok = shift(@zasobnik) + shift(@zasobnik);
		unshift(@zasobnik,$vysledok);
	}
	elsif ($vstup eq "-") {
		$vysledok = splice(@zasobnik,1,1) - shift(@zasobnik);
		unshift(@zasobnik,$vysledok);
	}
	elsif ($vstup eq "*") {
		$vysledok = shift(@zasobnik) * shift(@zasobnik);
		unshift(@zasobnik,$vysledok);
	}
	elsif ($vstup eq "/") {
		$vysledok = splice(@zasobnik,1,1) / shift(@zasobnik);
		unshift(@zasobnik,$vysledok);
	}
	elsif ($vstup ne "") {
		$vysledok = $vstup;
		unshift(@zasobnik,$vstup)
	}
	print "> $vysledok: \n";
}
while ($vstup ne "");
