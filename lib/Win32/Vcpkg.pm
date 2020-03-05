package Win32::Vcpkg;

use strict;
use warnings;
use 5.008001;
use Path::Tiny ();

# ABSTRACT: Interface to Microsoft Vcpkg
# VERSION

=head1 METHODS

=head2 root

 my $path = Win32::Vcpkg->root;

Returns a L<Path::Tiny> object for the root of the Vcpkg install.

=cut

sub root
{
  if(defined $ENV{PERL_WIN32_VCPKG})
  {
    my $root = Path::Tiny->new($ENV{PERL_WIN32_VCPKG});
    if(-d $root && -f $root->child('.vcpkg-root'))
    {
      return $root;
    }
  }

  {
    my $vcpkg_path_txt = Path::Tiny->new("~/AppData/Local/vcpkg/vcpkg.path.txt");
    if(-r $vcpkg_path_txt)
    {
      my $path = $vcpkg_path_txt->slurp;  # FIXME: what is the encoding of this file?
      chomp $path;
      my $root = Path::Tiny->new($path);
      if(-d $root && -f $root->child('.vcpkg-root'))
      {
        return $root;
      }
    }
  }

  return;
}

1;

=head1 ENVIRONMENT

=over 4

=item C<PERL_WIN32_VCPKG>

If set, this will be used for the Vcpkg root instead of automatic detection logic.

=back

=cut
