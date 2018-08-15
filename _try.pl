use v5.28;
use charnames ();
use Data::Dumper qw(Dumper);

# close(STDERR);
# close(STDOUT);

open CHARS, ">:utf8", "_chars.txt";
open CODE, ">:utf8", "_my.pl";
print CODE "use strict; use utf8;\n";

close(STDERR);
close(STDOUT);

$|=1;
for my $d (65 ... 60000) {
    my $code = 'my $' . chr($d) . ' = 42;';
    if (system("perl", "-Mutf8", "-c", "-e", $code) == 0) {
        print charnames::viacode($d) . " ";
        say CHARS join("\t", $d,  charnames::viacode($d));
        say CODE $code;
    }
}
