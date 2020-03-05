use Test2::V0 -no_srand => 1;
use Win32::Vcpkg;

my $root = Win32::Vcpkg->root;
my $triplet = Win32::Vcpkg->triplet;

diag '';
diag '';
diag '';

diag "Win32::Vcpkg->root    = @{[ defined $root ? $root->canonpath : 'undefined' ]}";
diag "Win32::Vcpkg->triplet = @{[ $triplet ]}";

diag '';
diag '';

subtest 'root method' => sub {
  skip_all 'root not found' unless defined $root;

  ok -d $root;
  ok -f $root->child('.vcpkg-root');

};

done_testing;


