#!perl -w
use strict;
BEGIN{
	package X;
	use Sub::Attribute;

	sub C :ATTR_SUB{
	    die;
	}

	$INC{'X.pm'}++;
}

use parent qw(X);
sub foo :C;

print "OK\n";
