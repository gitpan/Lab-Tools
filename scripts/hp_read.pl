#!/usr/bin/perl

#$Id: hp_read.pl 474 2006-08-10 20:51:11Z schroeer $

use strict;
use Lab::Instrument::HP34401A;

################################

unless (@ARGV > 0) {
    print "Usage: $0 GPIB-address\n";
    exit;
}

my $hp_gpib=$ARGV[0];

my $hp=new Lab::Instrument::HP34401A(0,$hp_gpib);

my $read_volt=$hp->read_voltage_dc(10,0.00001);

print "$read_volt\n";
