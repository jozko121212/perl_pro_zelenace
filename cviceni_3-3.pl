#!/usr/bin/perl -w

### Priradte do promenne $max vetsi z hodnot ulozenych v promenny $a a $b. 
### Ve druhe fazi pak zkuzte do $max priradit nejvetsi z trojice $a, $b, $c.

use strict;
use warnings;

### 1. faza
my $a = 3;
my $b = 5;
my $max;
if ($a > $b) {$max = $a}
else {$max = $b}

print "$max \n";

### 2. faza
my $c = 8;

if ( ($a > $b) and ($a > $c) ) {$max = $a}
elsif ( $b > $c ) {$max = $b}
else {$max = $c}
print "$max \n";
