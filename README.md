# Win32::Vcpkg [![Build Status](https://secure.travis-ci.org/plicease/Win32-Vcpkg.png)](http://travis-ci.org/plicease/Win32-Vcpkg) ![windows](https://github.com/plicease/Win32-Vcpkg/workflows/windows/badge.svg)

Interface to Microsoft Vcpkg

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

## default\_triplet

```perl
my $triplet = Win32::Vcpkg->default_triplet;
```

Returns the default triplet for the current environment.

# ENVIRONMENT

- `PERL_WIN32_VCPKG_ROOT`

    If set, this will be used for the Vcpkg root instead of automatic detection logic.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2020 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
