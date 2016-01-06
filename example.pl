#!/usr/bin/perl -w

setenv LANG czech;

use locale;
use strict;
use warnings;

my @pole = (1,2,3,4,5,6,7,8,9,10,11,25,45,94,2,5,85,52);

foreach my $i (@pole) {print "$i ";}
print "\n";
foreach my $i (reverse @pole) {print "$i ";}
print "\n";
foreach my $i (sort @pole) {print "$i ";}
