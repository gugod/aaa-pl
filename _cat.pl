#!/usr/bin/env perl
use Syntax::Highlight::Perl ':FULL';
local $/;
my $code = <>;
print format_string($code);
