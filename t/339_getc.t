# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use Char::HP15;
print "1..1\n";

my $__FILE__ = __FILE__;

my @getc = ();
while (my $c = Char::HP15::getc(DATA)) {
    last if $c eq "\n";
    push @getc, $c;
}
my $result = join('', map {"($_)"} @getc);

if ($result eq '(1)(2)(�)(�)(��)(��)') {
    print "ok - 1 $^X $__FILE__ 12������ --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12������ --> $result.\n";
}

__END__
12������