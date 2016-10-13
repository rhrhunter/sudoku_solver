use strict;
use warnings;
use sbox;
use sblock;

package game::bad;

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
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 3
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => 5, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 4
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => 7, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => 6, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        ]));

    # block 5
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 7, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 6
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        ]));

    # block 7
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        ]));

    # block 8
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 9
    push(@{$self->{blocks}}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));
}

1;
