#!/usr/bin/perl -w

use strict;
use warnings;

my $slovo = "ahojte";

#print length($slovo) . "\n";
my $posl_znak = substr($slovo,-1,1);
my $prvy_znak = substr($slovo, 0,1);

my $usek1 = substr($slovo,-1,1,$prvy_znak);
my $usek2 = substr($slovo,0,1,$posl_znak);
print $slovo . "\n";
