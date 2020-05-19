#!/usr/bin/perl5.22.1
##perl이 설치된 주소로 바꿔주세요.

use strict;
use warnings;
use Web::Scraper;
use URI;

my $stockCode = $ARGV[0];
my $URL = "https://finance.naver.com/item/main.nhn?code=".$stockCode;

my $html = scraper{
	process 'p.no_today span.blind', "span" => 'TEXT';
}->scrape(URI->new($URL));
print $html->{span};
