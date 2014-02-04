# NAME

WWW::Animemap::API - API client for Animemap API

# SYNOPSIS

    use WWW::Animemap::API;

    my $client = WWW::Animemap::API->new();
    

    # Get anime list that can be watched in Osaka 
    my $list = $client->list('osaka');

# DESCRIPTION

WWW::Animemap::API is API client for Animemap API.
Please refer http://animemap.net/pages/api/ about Animemap API.

If you access this API many times, Animemap API's administer restricts your access possibly.
Thus, you should cache the results of this API and reuse them, if you need to access this API many times.

# LICENSE

Copyright (C) papix.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

papix <mail@papix.net>
