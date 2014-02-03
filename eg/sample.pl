use strict;
use warnings;
use utf8;
use WWW::Animemap::API;
use Encode;

my $client = WWW::Animemap::API->new();

for my $anime (@{$client->list('大阪')}) {
    my $station = $anime->{station};
    my $title   = $anime->{title}; 
    print Encode::encode_utf8("$station - $title\n");
}
