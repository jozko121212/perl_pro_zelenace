#!/usr/bin/perl -w

use strict;
use warnings;

my $x = 195;

my $y = $x - ( $x%10 );

print "Hodnota premenned x je: $x.\n";
print "Po zaohruhleni na cele desiatky nadol: $y.\n";
