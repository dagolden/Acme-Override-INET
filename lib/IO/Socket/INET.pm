use strict;
use warnings;

#<<< No perltidy
package
    IO::Socket::INET; # hide from PAUSE because this module is EVIL
#>>>

our $VERSION = 1.34;

use IO::Socket::IP -register;
use base qw( IO::Socket::IP );
use Socket qw( PF_INET );

sub new {
    my $class = shift;
    return $class->SUPER::new( Family => PF_INET, PeerAddr => shift ) if @_ == 1;
    return $class->SUPER::new( Family => PF_INET, @_ );
}

1;
