# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

my $__FILE__ = __FILE__;

use Char::HP15;
print "1..1\n";

my $chcp = '';
if ($^O =~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    $chcp = `chcp`;
}
if ($chcp !~ /932/oxms) {
    print "ok - 1 # SKIP $^X $0\n";
    exit;
}

# dbmopen
my %DBM;
if (dbmopen(%DBM,'F�@�\',0777)) {
    print "ok - 1 dbmopen $^X $__FILE__\n";
    dbmclose(%DBM);
}
else {
    print "not ok - 1 dbmopen: $! $^X $__FILE__\n";
}
system('del F*.* >NUL 2>NUL');

unlink('F�@�\');

__END__
