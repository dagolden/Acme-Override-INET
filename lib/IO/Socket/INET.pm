use strict;
use warnings;

#<<< No perltidy
package
    IO::Socket::INET; # hide from PAUSE because this module is EVIL
#>>>

our $VERSION = 1.34;

# $IO::Socket::VERSION is set too late in a circular load,
# so we cheat and find it without loading
#
BEGIN {
    if ( $INC{"IO/Socket.pm"} && !defined $IO::Socket::VERSION ) {
        require Module::Metadata;
        my $mm = Module::Metadata->new_from_file( $INC{"IO/Socket.pm"} );
        #<<< No perltidy
        $IO::Socket::VERSION    # hide from Module::Metadata itself
            = $mm->version("IO::Socket");
        #>>>

    }
}

use IO::Socket::IP -register;
use base qw( IO::Socket::IP );
use Socket qw( PF_INET );

sub new {
    my $class = shift;
    return $class->SUPER::new( Family => PF_INET, PeerAddr => shift ) if @_ == 1;
    return $class->SUPER::new( Family => PF_INET, @_ );
}

1;

=head1 DESCRIPTION

This is a fake IO::Socket::INET as installed via Acme::Override::INET.

=cut
