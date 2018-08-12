use strict;

package ObjA {
    use overload '==' => sub { $_[0][0]++; };
    sub new { bless [$_[1]], $_[0] }
};

my $a = ObjA->new(1);

if ($a == 1 && $a == 2 && $a == 3) {
    print "Hello World\n";
}

