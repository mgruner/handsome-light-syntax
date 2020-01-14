
package test;

use strict;
use warnings;

use Carp qw(carp confess);
use Scalar::Util qw(weaken);

=head1 NAME

test - test module for syntax highlighting tests
second line of POD

=cut

sub Get {    ## no critic

    # No param unpacking for increased performance
    if ( $_[1] && $_[0]->{Objects}->{ $_[1] } ) {
        return $_[0]->{Objects}->{ $_[1] };
    }

    if ( !$_[1] ) {
        $_[0]->_DieWithError(
            Error => "Error: Missing parameter (object name)",
        );
    }

    return $_[0]->_ObjectBuild( Package => $_[1] );
}

my $Heredoc = <<EOF;
my test
multiline

string
EOF
