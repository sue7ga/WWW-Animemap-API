package WWW::Animemap::API::Response;
use strict;
use warnings;
use utf8;
use Class::Accessor::Lite(
    new => 1,
    ro  => [qw/ content /],
);

sub list {
    my $self = shift;
    return $self->content;
}

sub today {
    my $self = shift;
    return [ grep { $_->{today} == 1 } @{$self->content} ];
}

sub search_title {
    my ($self, $title) = @_;
    return [ grep { $_->{title} =~ /$title/ } @{$self->content} ];
}

sub search_station {
    my ($self, $station) = @_;
    return [ grep { $_->{station} =~ /$station/ } @{$self->content} ];
}

1;
