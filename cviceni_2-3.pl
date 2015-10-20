#!/usr/bin/perl -w

use strict;
use warnings;

my $x = 195;

my $y = $x - ( $x%10 );

print "Hodnota premennej x je: $x.\n";
print "Po zaokruhleni na cele desiatky nadol: $y.\n";
