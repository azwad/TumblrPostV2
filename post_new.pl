#!/usr/bin/perl

use TumblrPostV2;
use strict;
use utf8;
use feature qw( say);

my $pit_account = 'news.azwad.com';

my $post_type = 'post';		# post, reblog, delete

my $type = 'text';				# text, photo, quote, link, chat, audio, video
my $state = 'published';  # published, draft, queue
my $title = 'title of this post';
my $body =  'body text';

#see https://sites.google.com/site/tsukamoto/doc/tumblr/api-v2-20110807-1911#TOC-post---↲


my $newpost = TumblrPostV2->new($pit_account);

my %opt3 = (
		'type'					=> $type,
		'state'					=> $state,
		'title'					=> $title,
		'body'					=> $body,
);

$newpost->set_option(%opt3);

$newpost->post($post_type);







