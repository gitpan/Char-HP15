# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use Char::HP15;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいう' =~ /(あ[いう]え)/) {
    print "not ok - 1 $^X $__FILE__ not ('あいう' =~ /あ[いう]え/).\n";
}
else {
    print "ok - 1 $^X $__FILE__ not ('あいう' =~ /あ[いう]え/).\n";
}

__END__
