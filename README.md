# Win32::Vcpkg [![Build Status](https://secure.travis-ci.org/plicease/Win32-Vcpkg.png)](http://travis-ci.org/plicease/Win32-Vcpkg) ![windows](https://github.com/plicease/Win32-Vcpkg/workflows/windows/badge.svg)

Interface to Microsoft Vcpkg

# SYNOPSIS

```perl
use Win32::Vcpkg;
my $root = Win32::Vcpkg->root;
my $triplet = Win32::Vcpkg->perl_triplet;
```

# DESCRIPTION

This module provides an interface for finding and using `Vcpkg` packages.  `Vcpkg` is a Visual C++
library package manager, and as such is useful in building XS and FFI extensions for Visual C++ builds
of Perl.

# METHODS

## root

```perl
my $path = Win32::Vcpkg->root;
```

Returns a [Path::Tiny](https://metacpan.org/pod/Path::Tiny) object for the root of the Vcpkg install.

## perl\_triplet

```perl
my $triplet = Win32::Vcpkg->perl_triplet;
```

Returns the triplet needed for linking against Perl.

## default\_triplet

```perl
my $triplet = Win32::Vcpkg->default_triplet;
```

Returns the default triplet for the current environment.

# ENVIRONMENT

- `VCPKG_DEFAULT_TRIPLET`

    This is Vcpkg's default triplet.  If set this will override platform detection for the default triplet.

- `PERL_WIN32_VCPKG_ROOT`

    If set, this will be used for the Vcpkg root instead of automatic detection logic.

- `PERL_WIN32_VCPKG_DEBUG`

    If set to true, will link against debug libraries.

# SEE ALSO

- [Win32:Vcpkg::List](Win32:Vcpkg::List)
- [Win32:Vcpkg::Package](Win32:Vcpkg::Package)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2020 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
