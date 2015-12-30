#!/usr/bin/perl

use strict;
use warnings;

my @mesiace = qw(Januar Februar Marec April Maj Jun Jul August September Oktober November December);
print "Zadaj cislo 1 az 12: ";
my $mesiac = <>;chomp($mesiac);

print "Zvoleny mesiac je: $mesiace[$mesiac-1]";
