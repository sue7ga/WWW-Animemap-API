package WWW::Animemap::API;
use 5.008005;
use strict;
use warnings;
use constant API_ENDPOINT => 'http://animemap.net/api/table/';

use WWW::Animemap::API::Area;
use WWW::Animemap::API::Response;
use Carp;
use Furl;
use JSON;
use Class::Accessor::Lite::Lazy (
    new     => 1,
    ro_lazy => [qw/ furl /],
);

our $VERSION = "0.01";

sub get {
    my ($self, $area) = @_;
    my $content = $self->_get($area);
    return WWW::Animemap::API::Response->new(
        content => $content,
    );
}

sub list {
    my ($self, $area) = @_;
    return $self->_get($area);
}

sub _get {
    my $self = shift;
    my $area = WWW::Animemap::API::Area->fetch_area_key(shift);

    my $res = $self->furl->get( API_ENDPOINT . "$area.json" );
    Carp::croak sprintf("[Error] %s", $res->status_line) unless $res->is_success;  
    
    return JSON::decode_json($res->{content})->{response}->{item};
}

sub _build_furl {
    return Furl->new(
        agent   => 'WWW::Animemap::API (Perl)',
        timeout => 10,
    );
}

1;
__END__

=encoding utf-8

=head1 NAME

WWW::Animemap::API - It's new $module

=head1 SYNOPSIS

    use WWW::Animemap::API;

=head1 DESCRIPTION

WWW::Animemap::API is ...

=head1 LICENSE

Copyright (C) papix.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

papix E<lt>mail@papix.netE<gt>

=cut

