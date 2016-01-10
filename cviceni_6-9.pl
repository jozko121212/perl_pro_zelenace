#!/usr/bin/perl

use strict;
use warnings;

my $subor = '/etc/passwd';
open(PASS,$subor);

my @people = ();
while (my $riadok=<PASS>) {
	chomp($riadok);
	my @account = split(/:/,$riadok);
	if ($account[4] =~ /^\b([A-Z][a-z]+)\b\s?\b([A-Z][a-z]+\b)$/) {
		my @entry = ($2, $1 ,$account[0]);
		my $person = join(':',@entry);
		push(@people,$person);
	}
}
foreach my $i (sort(@people)) {
	$i =~ s/^(\w+):(\w+):(\w+)$/$2, $1 ($3)/gi;
	print "$i\n";
}
