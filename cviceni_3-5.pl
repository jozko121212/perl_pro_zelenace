#!/usr/bin/perl

use strict;
use warnings;

print "Zadaj prve cislo: ";
my $a = <>;chomp($a);
print "Zadaj druhe cislo: ";
my $b = <>;chomp($b);

if ( ($a*$b) == 0 ) {print "Nula nema delitela!\n";}
else {
        if ($a < 0) {$a = -$a;}
        if ($b < 0) {$b = -$b;}
        while ($a != $b) {
                if ($a < $b) {$b -= $a;print $b."\n";}
                else {$a -= $b;print $a."\n";}
        }
        my $D = $a;
        print "Najmensi spolocny delitel je: $D\n";
}
