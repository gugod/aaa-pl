use strict;

package A {
    use overload '==' => sub { 1 };
};

my $a = bless {}, 'A';

if ($a == 1 && $a == 2 && $a == 3) {
    print "Just A Perl Hacker\n";
}

