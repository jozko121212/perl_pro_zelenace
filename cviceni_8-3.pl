#!/usr/bin/perl

use strict;
use warnings;

&inicializace;
&vylosuj_cisla;

while ( my @los = &dalsi_los ) {
	my $poradi = &urci_poradi(@los);
	if ( $poradi <= 3 ) {
		&zarad_viteze($los[0],$poradi);
	}
}

srand;
my $pocetcisel = 5; # globalni promenne
my $maxcislo = 50;

sub vylosuj_cisla {
	my ($cislo,$vylosovano) = (0,0);
	my %tazeno;
	while ( $vylosovano < $pocetcisel ) {
		$cislo = int(rand($maxcislo)) + 1;
		if ( not $tazeno{$cislo} ) {
			$tazeno{$cislo} = 1;
			$vylosovano++;
		}
	}
	print "Tazena byla cisla: ";
	foreach $cislo ( sort {$a <=> $b} keys %tazeno ) {
		print "$cislo ";
	}
	print "\n";
}

sub dalsi_los {
	open(LOSY,$ARGV[0]);
	my $radek = <LOSY>;
	chomp($radek);
	return split(/\s+/,$radek);
}

sub urci_poradi {
	my @los = @_;
	my($cislo,$uhodl) = (0,0);
	shift(@los);	# zbavim se cisla losu
	foreach $cislo (@los) {
		if ( $tazeno{$cislo} ) {$uhodl++;}
	}
	return $pocetcisel + 1 - $uhodl;
}

sub zarad_viteze {
	my($los,$poradi) = @_;
	if ( $poradi == 1 ) {push(@prvni,$los);}
	elsif ( $poradi == 2 ) {push(@druzi,$los);}
	elsif ( $poradi == 3 ) {push(@treti,$los);}
}

sub vypis_vyteze {
	print "Vyherci prvni ceny:\n";
	&vypis_seznam(@prvni);
	print "\nVyherci druhe ceny:\n";
	&vypis_seznam(@druzi);
	print "\nVyherci treti ceny:\n";
	&vypis_seznam(@treti);
}

sub vypis_seznam {
	foreach my $los (sort { $a <=> $b } @_) {
		print "$los\n";
	}
}
