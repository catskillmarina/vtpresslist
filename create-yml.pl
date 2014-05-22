#!/usr/bin/perl

open(RADIO, "<Radio-raw.txt");
@radio = <RADIO>;
close(RADIO);
chomp(@radio);

foreach $station (@radio)
{
    ($call,$frequency,$cityoflicense,$owner,$format) = split(/\|\|/,$station);
    $call =~ s/ //g;
    print "$call:\n";
    print "  url:\n";
    print "  phone:\n";
    print "  fax:\n";
    print "  city:\n";
    print "    - $cityoflicense\n";
    print "  owner:\n";
    print "    - $owner\n";
    print "  format:\n";
    print "    - $format\n";
    print "\n";
}
    
