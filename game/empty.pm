use strict;
use warnings;
use sbox;
use sblock;

package game::empty;

use parent qw(game);

sub define_board {
    my $self = shift;
    my $id = 0;

    # block 1
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 2
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 3
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 4
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 5
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 6
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 7
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 8
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 9
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));
}

1;
