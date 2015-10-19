#!/usr/bin/perl -w

use strict;
use warnings;

my $a = 3;
my $b = 4; 

# 1. varianta:
my $c = sqrt( ($a**2) + ($b**2) );
print "prepona je: $c \n\n";

# 2. varianta:
$c = sqrt( $a*$a  + $b*$b );
print "prepona je: $c \n\n";
