use strict;
use warnings;
use sbox;
use sblock;

package game::hard1;

use parent qw(game);

sub define_board {
    my $self = shift;

    # block 1
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(),
        new sbox(3),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(2),
        new sbox(),
        ]));

    # block 2
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(),
        new sbox(2),
        new sbox(),
        new sbox(),
        new sbox(1),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(4),
        ]));

    # block 3
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(8),
        new sbox(),
        new sbox(),
        new sbox(7),
        new sbox(4),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 4
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(1),
        new sbox(3),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(9),
        new sbox(),
        ]));

    # block 5
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(3),
        new sbox(5),
        new sbox(),
        new sbox(6),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        ]));

    # block 6
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(2),
        new sbox(7),
        ]));

    # block 7
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(),
        new sbox(8),
        new sbox(9),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(4),
        ]));

    # block 8
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(),
        new sbox(6),
        new sbox(),
        new sbox(),
        new sbox(8),
        ]));

    # block 9
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(2),
        new sbox(3),
        new sbox(),
        new sbox(),
        new sbox(7),
        new sbox(),
        new sbox(1),
        new sbox(),
        new sbox(),
        ]));
}

1;
