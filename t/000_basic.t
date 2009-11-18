#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More tests => 7;
use Test::NoWarnings;

use Acme::CPANAuthors;

BEGIN {
    use_ok ('Acme::CPANAuthors::Pumpkings') or
       BAIL_OUT ("Loading of 'Acme::CPANAuthors::Pumpkings' failed");
}

ok defined $Acme::CPANAuthors::Pumpkings::VERSION, "VERSION is set";


my $authors = Acme::CPANAuthors -> new ('Pumpkings');

ok $authors, 'Got $authors';

ok $authors -> count, "There are pumpkings";
my @ids = $authors -> id;
ok scalar @ids, "There are ids";
ok $authors -> name ("LWALL"), "Find a name";
