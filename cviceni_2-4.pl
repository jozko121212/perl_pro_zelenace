#!/usr/bin/perl -w

use strict;
use warnings;

my $slovo = "ahoj";
$slovo .= substr($slovo,0,1,substr($slovo,-1,1,""));
print $slovo . "\n";
