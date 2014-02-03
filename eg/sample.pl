use strict;
use warnings;
use utf8;
use WWW::Animemap::API;
use Data::Dumper;

my $client = WWW::Animemap::API->new();
print Dumper $client->list('京都');
