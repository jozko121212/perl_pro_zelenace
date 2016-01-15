#!/usr/bin/perl

use strict;
use warnings;

my ($pocetcisel,$maxcislo,$uhodl,$poradi,$los);
my ($cislo,$vylosovano) = (0,0);
my %tazeno;
my (@los,@prvni,@druzi,@treti);
my $input_file = "cviceni_8-3.txt";

open(LOSY,$input_file) or die "can't open input file: $input_file\n";

&inicializace;#OK
#&vylosuj_cisla;#OK

&vypis_viteze;

while (@los = &dalsi_los) {
    $poradi = &urci_poradi(@los);
	if ($poradi <= 3) {
        &zarad_viteze($los[0],$poradi);
    } 
}

sub inicializace {
	print "volana f-cia inicializace\n";
	srand;
	$pocetcisel = 5;
	$maxcislo = 50;
}

sub vylosuj_cisla {
	print "volana f-cia vylosuj_cisla\n";
	while ($vylosovano < $pocetcisel) {
        $cislo = int(rand($maxcislo)) + 1;
		if (not $tazeno{$cislo}) {
            $tazeno{$cislo} = 1;
			$vylosovano++;
        }
        
    }
}

foreach my $i (sort keys(%tazeno)) {
	print "$i ... $tazeno{$i}\n";
}

sub dalsi_los {
	print "volana f-cia dalsi_los\n";
	my @radek = <LOSY>;
	chomp(@radek);
	#print "$radek\n";
	return split(/\s+/,@radek);
}

sub urci_poradi {
	print "volana f-cia urci_poradi\n";
	@los = @_;
	($cislo,$uhodl) = (0,0);
	shift(@los);
	foreach $cislo (@los) {
		if ($tazeno{$cislo}) {$uhodl++;}
	}
	return $pocetcisel + 1 - $uhodl;
}

sub zarad_viteze {
	print "volana f-cia zarad_viteze\n";
	($los,$poradi) = @_;
	if ($poradi == 1) {push(@prvni,$los);}
	elsif ($poradi == 2) {push(@druzi,$los);}
	elsif ($poradi == 3) {push(@treti,$los);}
	}

sub vypis_viteze {
	print "volana f-cia vypis_viteze\n";
	print "Vyherci prvni ceny:\n";
	&vypis_seznam(@prvni);
	print "\nVyherci druhe ceny:\n";
	&vypis_seznam(@druzi);
	print "\nVyherci treti ceny:\n";
	&vypis_seznam(@treti);
}

sub vypis_seznam {
	print "volana f-cia vypis_seznam\n";
	foreach $los (sort {$a <=> $b} @_) {
		print "$los\n";
	}
}
close(LOSY);