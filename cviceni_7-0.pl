#!/usr/bin/perl

use strict;
use warnings;

my %ages = ("Michael Caine",39,"Dirty Den",34,"Angie",27,"Willy","21 in dog years","The Queen Mother",108);

foreach my $person (keys %ages) {print "$person\n";}
foreach my $person (values %ages) {print "$person\n";}

