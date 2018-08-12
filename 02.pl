use strict;

package ObjA {
    sub TIESCALAR { bless [$_[1]], $_[0] }
    sub FETCH { $_[0][0]++; };
};

tie my $a, 'ObjA', 1;

if ($a == 1 && $a == 2 && $a == 3) {
    print "Hello World\n";
}

