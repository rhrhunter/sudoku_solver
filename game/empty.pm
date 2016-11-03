use strict;
use warnings;
use sbox;
use sblock;

package game::empty;

use parent qw(game);

sub define_board {
    my $self = shift;

    # block 1
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 2
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 3
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 4
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 5
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 6
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 7
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 8
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 9
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));
}

1;
