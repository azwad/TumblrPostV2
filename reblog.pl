#!/usr/bin/perl

use TumblrPostV2;
use strict;
use utf8;
use feature qw( say);


my $pit_account = 'news.azwad.com';

my $post_type = 'reblog';

my $reblog_key = 'EImt2NvQ';
my $post_id = 27695271885;
my $comment = 'reblog テスト'; 

my $reblog = TumblrPostV2->new($pit_account);

my %opt2 = (
		'id'					=> $post_id,
		'reblog_key'	=> $reblog_key,
		'comment'			=> $comment,
);

$reblog->set_option(%opt2);

$reblog->post($post_type);




