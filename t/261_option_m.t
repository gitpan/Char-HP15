# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use strict;
use Char::HP15;
print "1..1\n";

my $__FILE__ = __FILE__;

my $var1 = 'ABCDEFGH';
my $re = 'dEf';
if ($var1 =~ /C($re)g/i) {
    print qq{ok - 1 \$var1=~/C(\$re)g/i, \$1=($1) $^X $__FILE__\n};
}
else {
    print qq{not ok - 1 \$var1=~/C(\$re)g/i, \$1=($1) $^X $__FILE__\n};
}

__END__
