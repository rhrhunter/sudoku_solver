use strict;
use warnings;

use sbox;
use sblock;
use shoriz;
use svert;

use Data::Dumper;

my $blocks = [];
my $verts = [];
my $horiz = [];
my $depth = -1;
my $pass;

sub game1 {
    my $id = 0;

    # block 1
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 4
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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

sub game2 {
    my $id = 0;

    # block 1
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++), # 3
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
    ]));

    # block 2
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        new sbox(value => 6, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 7, id => $id++),
        ]));

    # block 3
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 4
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 4, id => $id++),
        new sbox(value => 8, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        ]));

    # block 5
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 7, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 6
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 6, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => 4, id => $id++),
        ]));

    # block 7
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 6, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 7, id => $id++),
        ]));

    # block 8
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        ]));

    # block 9
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));
}

sub game3 {
    my $id = 0;

    # block 1
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 6, id => $id++),
        ]));

    # block 2
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 7, id => $id++),
        ]));

    # block 3
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 4
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 6, id => $id++),
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 5
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        ]));

    # block 6
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        new sbox(value => 7, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 4, id => $id++),
        new sbox(value => 6, id => $id++),
        ]));

    # block 7
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 8
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 9
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 6, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        ]));
}

sub game_eliz {
    my $id = 0;

    # block 1
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 2
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 4, id => $id++),
        ]));

    # block 3
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 8, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 7, id => $id++),
        new sbox(value => 4, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 4
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 5
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 3, id => $id++),
        new sbox(value => 5, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 6, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));

    # block 6
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 2, id => $id++),
        new sbox(value => 7, id => $id++),
        ]));

    # block 7
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        new sbox(value => 9, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 4, id => $id++),
        ]));

    # block 8
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 6, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 8, id => $id++),
        ]));

    # block 9
    push(@{$blocks}, new sblock(boxes => [
        new sbox(value => 2, id => $id++),
        new sbox(value => 3, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 7, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => 1, id => $id++),
        new sbox(value => undef, id => $id++),
        new sbox(value => undef, id => $id++),
        ]));
}


sub game_bad {
    my $id = 0;

    # block 1
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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
    push(@{$blocks}, new sblock(boxes => [
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

sub build_board {
    # build blocks
    # build verticals
    my $modifier = 0;
    foreach my $vert (0..8) {
        my $row_adjust;
        if ($vert >= 0 and $vert <= 2) {
            $modifier = 0;
            $row_adjust = 0;
        } elsif ($vert >= 3 and $vert <= 5) {
            $modifier = 1;
            $row_adjust = 3;
        } elsif ($vert >= 6 and $vert <= 8) {
            $modifier = 2;
            $row_adjust = 6;
        }
        
        my $row1 = 0 + $vert - $row_adjust;
        my $row2 = 3 + $vert - $row_adjust;
        my $row3 = 6 + $vert - $row_adjust;
        
        my $block1 = ($modifier % 3) + 0; 
        my $block2 = ($modifier % 3) + 3;     
        my $block3 = ($modifier % 3) + 6;
        
        my $vert_obj = new svert(boxes => [$blocks->[$block1]->get_box($row1),
                                           $blocks->[$block1]->get_box($row2),
                                           $blocks->[$block1]->get_box($row3),
                                           $blocks->[$block2]->get_box($row1),
                                           $blocks->[$block2]->get_box($row2),
                                           $blocks->[$block2]->get_box($row3),
                                           $blocks->[$block3]->get_box($row1),
                                           $blocks->[$block3]->get_box($row2),
                                           $blocks->[$block3]->get_box($row3)]);
        
        push(@{$verts}, $vert_obj);
    }
    
    # build horizontals
    $modifier = 0;
    foreach my $horz (0..8) {
        my $block_adjust;
        if ($horz >= 0 and $horz <= 2) {
            $modifier = 0;
            $block_adjust = 0;
        } elsif ($horz >= 3 and $horz <= 5) {
            $modifier = 1;
            $block_adjust = 2;
        } elsif ($horz >= 6 and $horz <= 8) {
            $modifier = 2;
            $block_adjust = 4;
        }
        
        my $col1 = 0;
        my $col2 = 0;
        my $col3 = 0;
        
        if ($horz % 3 == 0) {
            $col1 = 0;
            $col2 = 1;
            $col3 = 2;
        } elsif ($horz % 3 == 1) {
            $col1 = 3;
            $col2 = 4;
            $col3 = 5;
        } elsif ($horz % 3 == 2) {
            $col1 = 6;
            $col2 = 7;
            $col3 = 8;
        }
        my $block1 = $modifier + $block_adjust + 0;    
        my $block2 = $modifier + $block_adjust + 1; 
        my $block3 = $modifier + $block_adjust + 2;
        
        my $horiz_obj = new shoriz(boxes => [$blocks->[$block1]->get_box($col1),
                                             $blocks->[$block1]->get_box($col2),
                                             $blocks->[$block1]->get_box($col3),
                                             $blocks->[$block2]->get_box($col1),
                                             $blocks->[$block2]->get_box($col2),
                                             $blocks->[$block2]->get_box($col3),
                                             $blocks->[$block3]->get_box($col1),
                                             $blocks->[$block3]->get_box($col2),
                                             $blocks->[$block3]->get_box($col3)]);
        
        push(@{$horiz}, $horiz_obj);
    }   
}

sub is_board_valid {
    # look at all objects and see if they are valid
    foreach (@{$blocks}, @{$verts}, @{$horiz}) {
        if (!$_->is_valid()) {
            return 0;
        }
    }

    return 1;
}

sub is_board_complete {
    # look at all objects and see if they are complete
    foreach (@{$blocks}, @{$verts}, @{$horiz}) {
        return 0 if (!$_->is_complete());
    }

    return 1;
}

sub find_next_box_to_fill {
    # the next box to fill will be an empty box 
    # where the column and row
    # with the most filled in boxes intersect

    my @bad_list = ();
    foreach (1..9) {
        my $v = get_mostly_populated_vert();
        if (not defined($v)) {
            # all verts have been filled in, we are done
            return undef;
        }
        my $h = get_mostly_populated_horiz(@bad_list);
        if (not defined($h)) {
            # all horizontals have been filled in, we are done
            return undef;
        }
        
        my $box = get_box_where_vert_and_horiz_intersect($v, $h);
        if ($box->get()) {
            # this box is already filled in, need to
            # add the horizontal to the bad list and pick a new one
            push(@bad_list, $h);
            next;
        } else {
            # this box doesnt have a value, return it 
            return $box;
        }
    }
    return undef;
}

sub get_mostly_populated_vert {
    my (@bad_list) = @_;
    my $max_obj;
    my $max;
  OUTER: foreach my $v (@{$verts}) {
        # skip this v if it is complete
        next if ($v->is_complete());

        foreach my $entry (@bad_list) {
            next OUTER if ($v eq $entry);
        }
        my $curr = $v->get_completion_size();
        if (!$max_obj) {
            $max_obj = $v;
            $max = $curr;
            next;
        }
        if ($max < $curr) {
            $max_obj = $v;
            $max = $curr;
        }
    }
    return $max_obj;
}

sub get_mostly_populated_horiz {
    my (@bad_list) = @_;
    my $max_obj;
    my $max;
  OUTER: foreach my $h (@{$horiz}) {
        # skip this h if it is complete
        next if ($h->is_complete());

        foreach my $entry (@bad_list) {
            next OUTER if ($h eq $entry);
        }
        my $curr = $h->get_completion_size();
        if (!$max_obj) {
            $max_obj = $h;
            $max = $curr;
            next;
        }
        if ($max < $curr) {
            $max_obj = $h;
            $max = $curr;
        }
    }
    return $max_obj;
}

sub get_box_where_vert_and_horiz_intersect {
    my ($vert_obj, $horiz_obj) = @_;

    foreach my $vslot (0..8) {
        foreach my $hslot (0..8) {
            if ($vert_obj->get_box($vslot) eq $horiz_obj->get_box($hslot)) {
                return $vert_obj->get_box($vslot);
            }
        }
    }
}

my $solutions = 0;
sub main {
    game_eliz();
    #game_bad();
    build_board();
    system('clear');
    print_board();

    #sleep 4;

    if (is_board_valid() and solve_it()) {
        print_board();
        print "Solved! (solution count: $solutions)\n";
    } else {
        print_board();
        print "Impossibru, no solutions possible!\n"
    }
}

sub solve_it {
    # figure out which box to work on next 
    my $box = find_next_box_to_fill();
    if (!$box) {
        # there are no more boxes to fill, we are done
        return 1;
    }

    # get the list of possible values for this box
    my @valid_values = $box->get_valid_values();

    foreach (@valid_values) {
        $box->set($_);

        print_board();
        system('clear');

        # if the board is complete, then we are done
        if (is_board_complete()) {
            $solutions++;
            # return 2 
            return 1;
        } else {
            # the board is not complete yet
            # solve the smaller puzzle
            
            my $solved = solve_it();
            if ($solved == 1) {
                # we solved the smaller puzzle, which means that the value we chose
                # for the current box is a good choice
                # we are not done yet
                return 1;
            #} elsif ($solved == 2) {
                # solving the smaller puzzle found a solution.
                # unset the current box and keep searching for more solutions
            #    $box->set(undef);
            } else {
                # the smaller puzzle was not solveable,
                # unset the value we chose and try a new value from the valid value
                # list
                $box->set(undef);
            }
        }
    }
    # at this point there is only one possibility
    # and that is the current box doesnt have a value
    if (!$box->get()) {
        # we exhausted every option for this box, which means that there are no solutions
        # at this point forward,
        return 0;
    } else {
        die "Assert shouldnt happen!\n";
    }
    
}

sub print_board {
    foreach my $h (@{$horiz}) {
        foreach my $i (0..8) {
            my $v = $h->get_box($i)->get();
            if (!$v) {
                print "  ";
            } else {
                print $v . " ";
            }
        }
        print "\n";
    }
    print "\n";
}

main();
