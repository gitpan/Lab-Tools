#!/usr/bin/perl
#$Id: yoko_goto.pl 474 2006-08-10 20:51:11Z schroeer $

use strict;
use Lab::Instrument::Yokogawa7651;

unless (@ARGV > 0) {
    print "Usage: $0 GPIB-address [goto_voltage]\n";
    exit;
}

my ($gpib,$goto)=@ARGV;

my $source=new Lab::Instrument::Yokogawa7651(0,$gpib);

if (defined $goto) {
    $source->sweep_to_voltage($goto);
} else {
    print $source->get_voltage();
}
