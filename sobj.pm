use strict;
use warnings;

package sobj;

use Moo;

has 'boxes' => (
    default => sub { [] },
    is => 'ro',
    trigger => sub {
        my $self = shift;
        my $boxes = shift;

        # add ourselves to each boxes' owner list
        foreach (@{$self->{boxes}}) {
            $_->add_owner($self);
        }
    }        
);

sub get_valid_values {
    my ($self) = @_;
    
    my %valid = (1,0,
                 2,0,
                 3,0,
                 4,0,
                 5,0,
                 6,0,
                 7,0,
                 8,0,
                 9,0);
    my %hash = %{$self->_build_hash()};
    foreach (keys %hash) {
        delete($valid{$_});
    }
    return [keys %valid];
}

sub _build_hash {
    my ($self) = @_;
    my %hash = ();
    foreach my $box (@{$self->boxes()}) {
        if ($box->get()) {
            $hash{$box->get()}++;
        }
    }
    return \%hash;
}

sub is_valid {
    my ($self) = @_;

    my %hash = %{$self->_build_hash()};
    my $sum = 0;
    foreach (values %hash) {
        if ($_ > 1) {
            return 0;
        }
        $sum += $_;
    }
    if ($sum > (1+2+3+4+5+6+7+8+9)) {
        return 0;
    }

    return 1;
}

sub get_box {
    my ($self, $num) = @_;
    return $self->boxes()->[$num];
}

sub is_complete {
    my ($self) = @_;

    my %hash = %{$self->_build_hash()};

    # there must be nine filled in boxes in this block
    # for it to be complete and the block must be valid
    if (scalar(keys %hash) != 9) {
        return 0;
    } else {
        return $self->is_valid();
    }
}

sub get_completion_size {
    my ($self) = @_;
    
    my %hash = %{$self->_build_hash()};
    return scalar keys %hash;
}

1;
