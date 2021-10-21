#!/usr/bin/perl
# ref: https://grantm.github.io/perl-libxml-by-example/basics.html

use 5.010;
use strict;
use warnings;
use XML::LibXML;

my $filename = 'playlist.xml';
my $dom = XML::LibXML->load_xml(location => $filename);

foreach my $cast_name ($dom->findnodes('/playlist/movie/cast/person/@name')){
    my $cast_name = join ',', map {
        $_->to_literal();
    }
    say , $cast_name;

}