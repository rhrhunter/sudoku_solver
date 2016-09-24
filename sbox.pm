package sbox;

use Data::Dumper;

sub new {
    my ($class, %args) = @_;
    my $self = {};
    bless($self, $class);
    $self->{value} = delete($args{value});
    $self->{id} = delete($args{id});
    return $self;
}

sub get {
    my ($self) = @_;
    return $self->{value};
}

sub set {
    my ($self, $val) = @_;
    my $old = $self->{value};
    $self->{value} = $val;
    return $old;
}

sub get_valid_values {
    my ($self) = @_;

    # determine the list of valid values from the vert/horiz/block
    # this box is a part of, and only capture the intersection of
    # that list
    my @arrs;
    foreach (@{$self->{owners}}) {
        push(@arrs, $_->get_valid_values());
    }
    
    my @int;

    for (my $i = 0; $i < scalar(@arrs); $i++) {
        if (!$i) {
            @int = @{$arrs[$i]};
        } else {
            my %h = map{$_ =>1} @{$arrs[$i]};
            @int = grep($h{$_}, @int);
        }
    }

    return @int;
}

sub add_owner {
    my ($self, $owner) = @_;

    push(@{$self->{owners}}, $owner);
}

1;
