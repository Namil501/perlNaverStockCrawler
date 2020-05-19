#!/usr/bin/perl5.22.1

use strict;
use warnings;
use Web::Scraper;
use URI;

my $stockCode = $ARGV[0];
my $URL = "https://finance.naver.com/item/main.nhn?code=".$stockCode;
#my $URL = "https://finance.naver.com/item/main.nhn?code=005930";

my $html = scraper{
	process 'p.no_today span.blind', "span" => 'TEXT';
#}->scrape(URI->new("https://finance.naver.com/item/main.nhn?code=005930"));
}->scrape(URI->new($URL));
print $html->{span};
