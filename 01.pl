use strict;

package ObjA {
    use overload '==' => sub { 1 };
    sub new { bless {}; }
};

my $a = ObjA->new();

if ($a == 1 && $a == 2 && $a == 3) {
    print "Just A Perl Hacker\n";
}

