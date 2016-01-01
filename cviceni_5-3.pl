#!/usr/bin/perl
# Cviceni 5-3: Zjistete v poli @vyroba mesic, ve kterem bylo dosazeno nejvetsiho objemu vyroby.

use strict;
use warnings;

my @vyroba = (1111, 10, 20, 30, 40, 5, 163, 89, 56, 21, 45, 874);
my @rok = qw(Januar Februar Marec April Maj Jun Jul August September Oktober November December);

my $max = 0;
my $mesiac;
foreach my $i (0..11) {
	if ( $vyroba[$i] > $max ) {
		$max = $vyroba[$i];
		$mesiac = $i;
	}
}
print "Najvacia vyroba $max bola v mesiaci $rok[$mesiac].\n";
