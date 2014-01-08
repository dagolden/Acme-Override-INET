use strict;
use warnings;

package Acme::Override::INET;
# ABSTRACT: Monkeypatch IO::Socket::INET to use IO::Socket::IP
# VERSION

1;

=for Pod::Coverage BUILD

=head1 B<WARNING>: This may break your system

=head1 DESCRIPTION

Installing this distribution replaces your L<IO::Socket::INET> with
a patched version that uses L<IO::Socket::IP>.  Don't do this unless
you are willing to accept the risk of doing so.

Use this only to test how effective L<IO::Socket::IP> is as a drop-in
replacement.

=cut

# vim: ts=4 sts=4 sw=4 et:
