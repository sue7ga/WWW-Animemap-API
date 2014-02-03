requires 'perl', '5.008001';
requires 'Carp';
requires 'Class::Accessor::Lite';
requires 'Class::Accessor::Lite::Lazy';
requires 'Encode';
requires 'Furl';
requires 'JSON';

on 'test' => sub {
    requires 'Test::More', '0.98';
};

