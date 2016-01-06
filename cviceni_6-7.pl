#!/usr/bin/perl -w

use strict;
use warnings;

print "Zadaj svoje Meno a Priezvisko: ";
my $radek = <>;chomp($radek);

$radek =~ s/\b(\w*?)\b/\u$1/gi;

print "$radek\n";
