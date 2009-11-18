#!/usr/bin/perl

use 5.006;

use strict;
use warnings;
no  warnings 'syntax';

use Test::More tests => 3;
use Test::NoWarnings;

BEGIN {
    use_ok ('Acme::CPANAuthors::Pumpkings') or
        BAIL_OUT ("Loading of 'Acme::CPANAuthors::Pumpkings' failed");
}

ok defined $Acme::CPANAuthors::Pumpkings::VERSION, "VERSION is set";
