# This file is encoded in HP-15.
die "This file is not encoded in HP-15.\n" if q{��} ne "\x82\xa0";

use Char::HP15;

print "1..12\n";

# Char::HP15::eval (omit) has Char::HP15::eval "..."
$_ = <<'END';
Char::HP15::eval " if ('�A�\' !~ /A/) { return 1 } else { return 0 } "
END
if (Char::HP15::eval) {
    print qq{ok - 1 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 1 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has Char::HP15::eval qq{...}
$_ = <<'END';
Char::HP15::eval qq{ if ('�A�\' !~ /A/) { return 1 } else { return 0 } }
END
if (Char::HP15::eval) {
    print qq{ok - 2 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 2 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has Char::HP15::eval '...'
$_ = <<'END';
Char::HP15::eval ' if (qq{�A�\} !~ /A/) { return 1 } else { return 0 } '
END
if (Char::HP15::eval) {
    print qq{ok - 3 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 3 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has Char::HP15::eval q{...}
$_ = <<'END';
Char::HP15::eval q{ if ('�A�\' !~ /A/) { return 1 } else { return 0 } }
END
if (Char::HP15::eval) {
    print qq{ok - 4 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 4 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has Char::HP15::eval $var
$_ = <<'END';
Char::HP15::eval $var2
END
my $var2 = q{ if ('�A�\' !~ /A/) { return 1 } else { return 0 } };
if (Char::HP15::eval) {
    print qq{ok - 5 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 5 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has Char::HP15::eval (omit)
$_ = <<'END';
$_ = "if ('�A�\' !~ /A/) { return 1 } else { return 0 }";
Char::HP15::eval
END
if (Char::HP15::eval) {
    print qq{ok - 6 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 6 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has Char::HP15::eval {...}
$_ = <<'END';
Char::HP15::eval { if ('�A�\' !~ /A/) { return 1 } else { return 0 } }
END
if (Char::HP15::eval) {
    print qq{ok - 7 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 7 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has "..."
$_ = <<'END';
if ('�A�\' !~ /A/) { return "1" } else { return "0" }
END
if (Char::HP15::eval) {
    print qq{ok - 8 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 8 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has qq{...}
$_ = <<'END';
if ('�A�\' !~ /A/) { return qq{1} } else { return qq{0} }
END
if (Char::HP15::eval) {
    print qq{ok - 9 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 9 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has '...'
$_ = <<'END';
if ('�A�\' !~ /A/) { return '1' } else { return '0' }
END
if (Char::HP15::eval) {
    print qq{ok - 10 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 10 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has q{...}
$_ = <<'END';
if ('�A�\' !~ /A/) { return q{1} } else { return q{0} }
END
if (Char::HP15::eval) {
    print qq{ok - 11 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 11 $^X @{[__FILE__]}\n};
}

# Char::HP15::eval (omit) has $var
$_ = <<'END';
if ('�A�\' !~ /A/) { return $var1 } else { return $var0 }
END
my $var1 = 1;
my $var0 = 0;
if (Char::HP15::eval) {
    print qq{ok - 12 $^X @{[__FILE__]}\n};
}
else {
    print qq{not ok - 12 $^X @{[__FILE__]}\n};
}

__END__
