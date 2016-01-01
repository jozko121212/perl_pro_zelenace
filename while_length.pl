#!/usr/bin/perl

use strict;
use warnings;

my $dlzka = 0;
my $vstup = $ARGV[0];chomp $vstup;

if (!$vstup) {print "input for the script not defined.\n";}

while ($vstup gt 0) { $dlzka++; chop $vstup;}
print "String has $dlzka characters.\n";
