#!/usr/bin/perl -w

use strict;
use warnings;

###  About $zisk variable
print "multiplying: \n";
#long version
my $zisk = 20;
$zisk = $zisk * 2;
print "from long version: $zisk \n";

#shortened version
my $zisk_skr = 20;
$zisk_skr *= 2;
print "from shortened version: $zisk_skr \n\n\n";

###  About $sklad variable
print "substracting: \n";
#long version
my $sklad = 20;
my $prodano = 5;
$sklad = $sklad - $prodano;
print "from long version: $sklad\n";

my $sklad_skr = 20;
$sklad_skr -= $prodano;
print "from shortened version: $sklad_skr\n\n\n";
