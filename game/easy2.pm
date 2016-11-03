use strict;
use warnings;
use sbox;
use sblock;

package game::easy2;

use Moo;

extends 'game';

sub define_board {
    my $self = shift;

    # block 1
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(9),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(6),
        ]));

    # block 2
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(3),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(7),
        ]));

    # block 3
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(4),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(3),
        new sbox(),
        ]));

    # block 4
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(6),
        new sbox(4),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(2),
        new sbox(),
        ]));

    # block 5
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(1),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(5),
        new sbox(3),
        new sbox(),
        new sbox(8),
        ]));

    # block 6
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(8),
        new sbox(7),
        new sbox(),
        new sbox(),
        new sbox(4),
        new sbox(6),
        ]));

    # block 7
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(1),
        new sbox(),
        new sbox(9),
        new sbox(),
        new sbox(),
        new sbox(4),
        new sbox(),
        new sbox(5),
        new sbox(),
        ]));

    # block 8
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(3),
        new sbox(2),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 9
    push(@{$self->blocks()}, new sblock(boxes => [
        new sbox(6),
        new sbox(),
        new sbox(5),
        new sbox(),
        new sbox(),
        new sbox(1),
        new sbox(),
        new sbox(),
        new sbox(3),
        ]));
}

1;
