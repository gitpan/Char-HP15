# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use Char::HP15;
print "1..1\n";

my $__FILE__ = __FILE__;

if ($] < 5.006) {
    print qq{ok - 1 # SKIP $^X $] $__FILE__\n};
    exit;
}

open(FILE,">$__FILE__.txt") || die;
print FILE <DATA>;
close(FILE);
open(my $fh,"<$__FILE__.txt") || die;

my @getc = ();
while (my $c = Char::HP15::getc($fh)) {
    last if $c =~ /\A[\r\n]\z/;
    push @getc, $c;
}
close($fh);
unlink("$__FILE__.txt");

my $result = join('', map {"($_)"} @getc);

if ($result eq '(1)(2)(ｱ)(ｲ)(あ)(い)') {
    print "ok - 1 $^X $__FILE__ 12ｱｲあい --> $result.\n";
}
else {
    print "not ok - 1 $^X $__FILE__ 12ｱｲあい --> $result.\n";
}

__END__
12ｱｲあい
