# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{あ} ne "\x82\xa0";

use Char::HP15;
print "1..1\n";

# マッチしないはずなのにマッチする（２）
if ("兄弟" =~ /Z/) {
    print qq<not ok - 1 "KYODAI" =~ /Z/>;
}
else {
    print qq<ok - 1 "KYODAI" =~ /Z/>;
}

__END__

Shift-JISテキストを正しく扱う
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
