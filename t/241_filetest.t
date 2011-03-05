# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{‚ } ne "\x82\xa0";

# ˆø”‚ªÈ—ª‚³‚ê‚½ê‡‚ÌƒeƒXƒg

my $__FILE__ = __FILE__;

use Char::Ehp15;
print "1..25\n";

if ($^O !~ /\A (?: MSWin32 | NetWare | symbian | dos ) \z/oxms) {
    for my $tno (1..25) {
        print "ok - $tno # SKIP $^X $0\n";
    }
    exit;
}

open(FILE,'>file');
close(FILE);

open(FILE,'file');

$_ = 'file';
if ((Char::Ehp15::r_ ne '') == (-r ne '')) {
    print "ok - 1 Char::Ehp15::r_ == -r  $^X $__FILE__\n";
}
else {
    print "not ok - 1 Char::Ehp15::r_ == -r  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::w_ ne '') == (-w ne '')) {
    print "ok - 2 Char::Ehp15::w_ == -w  $^X $__FILE__\n";
}
else {
    print "not ok - 2 Char::Ehp15::w_ == -w  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::x_ ne '') == (-x ne '')) {
    print "ok - 3 Char::Ehp15::x_ == -x  $^X $__FILE__\n";
}
else {
    print "not ok - 3 Char::Ehp15::x_ == -x  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::o_ ne '') == (-o ne '')) {
    print "ok - 4 Char::Ehp15::o_ == -o  $^X $__FILE__\n";
}
else {
    print "not ok - 4 Char::Ehp15::o_ == -o  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::R_ ne '') == (-R ne '')) {
    print "ok - 5 Char::Ehp15::R_ == -R  $^X $__FILE__\n";
}
else {
    print "not ok - 5 Char::Ehp15::R_ == -R  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::W_ ne '') == (-W ne '')) {
    print "ok - 6 Char::Ehp15::W_ == -W  $^X $__FILE__\n";
}
else {
    print "not ok - 6 Char::Ehp15::W_ == -W  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::X_ ne '') == (-X ne '')) {
    print "ok - 7 Char::Ehp15::X_ == -X  $^X $__FILE__\n";
}
else {
    print "not ok - 7 Char::Ehp15::X_ == -X  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::O_ ne '') == (-O ne '')) {
    print "ok - 8 Char::Ehp15::O_ == -O  $^X $__FILE__\n";
}
else {
    print "not ok - 8 Char::Ehp15::O_ == -O  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::e_ ne '') == (-e ne '')) {
    print "ok - 9 Char::Ehp15::e_ == -e  $^X $__FILE__\n";
}
else {
    print "not ok - 9 Char::Ehp15::e_ == -e  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::z_ ne '') == (-z ne '')) {
    print "ok - 10 Char::Ehp15::z_ == -z  $^X $__FILE__\n";
}
else {
    print "not ok - 10 Char::Ehp15::z_ == -z  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::s_ ne '') == (-s ne '')) {
    print "ok - 11 Char::Ehp15::s_ == -s  $^X $__FILE__\n";
}
else {
    print "not ok - 11 Char::Ehp15::s_ == -s  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::f_ ne '') == (-f ne '')) {
    print "ok - 12 Char::Ehp15::f_ == -f  $^X $__FILE__\n";
}
else {
    print "not ok - 12 Char::Ehp15::f_ == -f  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::d_ ne '') == (-d ne '')) {
    print "ok - 13 Char::Ehp15::d_ == -d  $^X $__FILE__\n";
}
else {
    print "not ok - 13 Char::Ehp15::d_ == -d  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::p_ ne '') == (-p ne '')) {
    print "ok - 14 Char::Ehp15::p_ == -p  $^X $__FILE__\n";
}
else {
    print "not ok - 14 Char::Ehp15::p_ == -p  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::S_ ne '') == (-S ne '')) {
    print "ok - 15 Char::Ehp15::S_ == -S  $^X $__FILE__\n";
}
else {
    print "not ok - 15 Char::Ehp15::S_ == -S  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::b_ ne '') == (-b ne '')) {
    print "ok - 16 Char::Ehp15::b_ == -b  $^X $__FILE__\n";
}
else {
    print "not ok - 16 Char::Ehp15::b_ == -b  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::c_ ne '') == (-c ne '')) {
    print "ok - 17 Char::Ehp15::c_ == -c  $^X $__FILE__\n";
}
else {
    print "not ok - 17 Char::Ehp15::c_ == -c  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::u_ ne '') == (-u ne '')) {
    print "ok - 18 Char::Ehp15::u_ == -u  $^X $__FILE__\n";
}
else {
    print "not ok - 18 Char::Ehp15::u_ == -u  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::g_ ne '') == (-g ne '')) {
    print "ok - 19 Char::Ehp15::g_ == -g  $^X $__FILE__\n";
}
else {
    print "not ok - 19 Char::Ehp15::g_ == -g  $^X $__FILE__\n";
}

local $^W = 0;
$_ = 'file';
if ((Char::Ehp15::k_ ne '') == (-k ne '')) {
    print "ok - 20 Char::Ehp15::k_ == -k  $^X $__FILE__\n";
}
else {
    print "not ok - 20 Char::Ehp15::k_ == -k  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::T_ ne '') == (-T ne '')) {
    print "ok - 21 Char::Ehp15::T_ == -T  $^X $__FILE__\n";
}
else {
    print "not ok - 21 Char::Ehp15::T_ == -T  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::B_ ne '') == (-B ne '')) {
    print "ok - 22 Char::Ehp15::B_ == -B  $^X $__FILE__\n";
}
else {
    print "not ok - 22 Char::Ehp15::B_ == -B  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::M_ ne '') == (-M ne '')) {
    print "ok - 23 Char::Ehp15::M_ == -M  $^X $__FILE__\n";
}
else {
    print "not ok - 23 Char::Ehp15::M_ == -M  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::A_ ne '') == (-A ne '')) {
    print "ok - 24 Char::Ehp15::A_ == -A  $^X $__FILE__\n";
}
else {
    print "not ok - 24 Char::Ehp15::A_ == -A  $^X $__FILE__\n";
}

$_ = 'file';
if ((Char::Ehp15::C_ ne '') == (-C ne '')) {
    print "ok - 25 Char::Ehp15::C_ == -C  $^X $__FILE__\n";
}
else {
    print "not ok - 25 Char::Ehp15::C_ == -C  $^X $__FILE__\n";
}

close(FILE);
unlink('file');

__END__
