#!/usr/bin/perl

use TumblrPostV2;
use strict;
use utf8;
use feature qw( say);

my $pit_account = 'news.azwad.com';

my $post_type = 'post';		# post, reblog, delete

#my $type = 'text';				# text, photo, quote, link, chat, audio, video
#my $state = 'published';  # published, draft, queue
#my $title = 'title of this post';
#my $body =  'test via api v2';

#see https://sites.google.com/site/tsukamoto/doc/tumblr/api-v2-20110807-1911#TOC-post---↲


my $opt1 = {
	'type' => 'text',
	'state' => 'published',
	'title' => 'v2 text',
	'body' => 'test via api v2',
};

my $opt2 = {
	'type' => 'photo',
	'state' => 'published',
	'source' => 'http://mainichi.jp/graph/2012/09/06/20120906k0000e030149000c/image/001.jpg',
	'title' => 'v2 photo',
	'caption' => 'test photo via api v2',
};

my $opt3 = {
	'type' => 'quote',
	'state' => 'published',
	'title' => 'v2 quote',
	'quote' => 'quote via api v2',
};
my $opt4 = {
	'type' => 'link',
	'state' => 'published',
	'url' => 'https://sites.google.com/site/tsukamoto/doc/tumblr/api-v2-20110807-1911#auth',
	'title' => 'v2 link',
	'description' => 'link test via api v2',
};

my @opt = ($opt1, $opt2, $opt3, $opt4);

foreach my $var (@opt){
	my $newpost = TumblrPostV2->new($pit_account);
	$newpost->set_option(%$var);
	$newpost->post($post_type);
}
