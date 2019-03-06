use strict;
use warnings;
use Data::Dumper;

package game;

use Moo;

use sbox;
use sblock;
use shoriz;
use svert;

has blocks => (
    default => sub { [] },
    is => "rw"
);

has verts => (
    default => sub { [] },
    is => "rw"
);

has horiz => (
    default => sub { [] },
    is => "rw"
);

has solutions => (
    default => 0,
    is => "rw"
);

has draw => (
    default => 1,
    is => "rw"
);

has do_first_pass => (
    default => 1,
    is => "rw"
);

sub define_board {
    my $self = shift;
    die ref($self) . " must implement 'define_board()'";
}

sub build_board {
    my $self = shift;
    
    # first define the board
    $self->define_board();

    # create all the columns
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
        
        my $vert_obj = new svert(boxes => [$self->blocks()->[$block1]->get_box($row1),
                                           $self->blocks()->[$block1]->get_box($row2),
                                           $self->blocks()->[$block1]->get_box($row3),
                                           $self->blocks()->[$block2]->get_box($row1),
                                           $self->blocks()->[$block2]->get_box($row2),
                                           $self->blocks()->[$block2]->get_box($row3),
                                           $self->blocks()->[$block3]->get_box($row1),
                                           $self->blocks()->[$block3]->get_box($row2),
                                           $self->blocks()->[$block3]->get_box($row3)]);
        
        push(@{$self->verts()}, $vert_obj);
    }
    
    # create all the rows
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
        
        my $horiz_obj = new shoriz(boxes => [$self->blocks()->[$block1]->get_box($col1),
                                             $self->blocks()->[$block1]->get_box($col2),
                                             $self->blocks()->[$block1]->get_box($col3),
                                             $self->blocks()->[$block2]->get_box($col1),
                                             $self->blocks()->[$block2]->get_box($col2),
                                             $self->blocks()->[$block2]->get_box($col3),
                                             $self->blocks()->[$block3]->get_box($col1),
                                             $self->blocks()->[$block3]->get_box($col2),
                                             $self->blocks()->[$block3]->get_box($col3)]);
        
        push(@{$self->horiz()}, $horiz_obj);
    }   
}

sub is_board_valid {
    my $self = shift;
    # look at all objects and see if they are valid
    foreach (@{$self->blocks()}, @{$self->verts()}, @{$self->horiz()}) {
        if (!$_->is_valid()) {
            return 0;
        }
    }

    return 1;
}

sub is_board_complete {
    my $self = shift;
    # look at all objects and see if they are complete
    foreach (@{$self->blocks()}, @{$self->verts()}, @{$self->horiz()}) {
        return 0 if (!$_->is_complete());
    }

    return 1;
}

sub find_next_box_to_fill {
    my $self = shift;
    # the next box to fill will be an empty box 
    # where the column and row
    # with the most filled in boxes intersect

    my @bad_list = ();
    foreach (1..9) {
        my $v = $self->get_mostly_populated_vert();
        if (not defined($v)) {
            # all verts have been filled in, we are done
            return undef;
        }
        my $h = $self->get_mostly_populated_horiz(@bad_list);
        if (not defined($h)) {
            # all horizontals have been filled in, we are done
            return undef;
        }
        
        my $box = $self->get_box_where_vert_and_horiz_intersect($v, $h);
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
    my ($self, @bad_list) = @_;
    my $max_obj;
    my $max;
  OUTER: foreach my $v (@{$self->verts()}) {
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
    my ($self, @bad_list) = @_;
    my $max_obj;
    my $max;
  OUTER: foreach my $h (@{$self->horiz()}) {
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
    my ($self, $vert_obj, $horiz_obj) = @_;

    foreach my $vslot (0..8) {
        foreach my $hslot (0..8) {
            if ($vert_obj->get_box($vslot) eq $horiz_obj->get_box($hslot)) {
                return $vert_obj->get_box($vslot);
            }
        }
    }
}

sub find_solution {
    my $self = shift;
    
    if ($self->draw()) {
	system('clear');    
	$self->print_board();
    }

    # perform a simple first pass algorithm to find obvious answers    
    use Time::HiRes qw(time);
    my $stime_fp = time();
    my $fp_boxes = $self->first_pass();
    my $etime_fp = time() - $stime_fp;

    my $stime = time();
    if ($self->is_board_valid() and $self->solve_it()) {
        $self->print_board();
	my $solutions = $self->{solutions};
        print "Solved! (solution count: $solutions)\n";
    } else {
        $self->print_board();
        print "Impossibru, no solutions possible!\n"
    }
    my $etime = time() - $stime;
    print "Time Total: $etime\n";
    print "Time First pass: $etime_fp\n";
    print "First pass boxes filled: " . scalar(@{$fp_boxes}) . "\n";
}

sub first_pass {
    my $self = shift;

    return if (not $self->do_first_pass);

    my $keep_trying = 1;
    my $i = 0;
    my $key = undef;

    my @boxes = ();
    
  OUTER:
    while ($keep_trying) {
	$keep_trying = 0;
	
	foreach my $block (@{$self->blocks()}) {
	    foreach my $box (@{$block->boxes}) {
		last OUTER if ($key and $key eq $box);
		next if ($box->get());
		my @vals = $box->get_valid_values();
		if (scalar(@vals) == 1) {		
		    $box->set($vals[0]);
		    push(@boxes, $box);
		    $keep_trying = 1;
		    $key = $box;
		}
	    }
	}
    }
    return \@boxes;
}

sub solve_it {
    my $self = shift;
    # figure out which box to work on next 
    my $box = $self->find_next_box_to_fill();
    if (!$box) {
        # there are no more boxes to fill, we are done
        return 1;
    }

    # get the list of possible values for this box
    my @valid_values = $box->get_valid_values();

    foreach (@valid_values) {
        $box->set($_);

	if ($self->draw()) {
	    $self->print_board();
	    system('clear');
	}

        # if the board is complete, then we are done
        if ($self->is_board_complete()) {
            $self->solutions($self->solutions() + 1);
            return 1;
        } else {
            # the board is not complete yet
	    
	    # run the first pass algorithm
	    my $fp_boxes = $self->first_pass();
	    
            # solve the smaller puzzle            
            my $solved = $self->solve_it();
            if ($solved == 1) {
                # we solved the smaller puzzle, which means that the value we chose
                # for the current box is a good choice
                # we are not done yet
                return 1;
            } else {
                # the smaller puzzle was not solveable,
                # unset the value we chose and try a new value from the valid value
                # list
                $box->set(undef);
		
		# unset all fp_boxes because they are potentially all bad
		foreach my $b (@{$fp_boxes}) {
		    $b->set(undef);
		}
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
    my $self = shift;
    
    my $row = 0;
    foreach my $h (@{$self->horiz()}) { 
        # every three rows, print a buffer row
        if ($row % 3 == 0) {
            foreach (1..3) {
                print "+" . "-" x 9;
            }
            print "+\n";            
        }
        $row++;

        my $col = 0;
        foreach my $i (0..8) {
            # every 3 columns needs a pipe
            if ($col % 3 == 0) {
                print "|";
            }
            $col++;
            my $v = $h->get_box($i)->get();
            if (!$v) {
                print "   ";
            } else {
                print " " . $v . " ";
            }
        }
        # final bar
        print "|\n";
    }
    # final row buffer
    foreach (1..3) {
        print "+" . "-" x 9;
    }
    print "+\n";            
}

1;
