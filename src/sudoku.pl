#!/usr/bin/env perl

use strict;
use warnings;

use lib qw(.);

sub main {    
    my $GAME = $ARGV[0];
    if (!$GAME) {
	die "Missing game name";
    }
    my $draw = $ARGV[1] // 1;
    my $fp = $ARGV[2] // 1;

    my $mod = $GAME;
    $mod =~ s/::/\//g;
    require $mod . ".pm";
    my $game = $GAME->new(draw => $draw, do_first_pass => $fp);
    $game->build_board();

    $game->find_solution();
}

main();
