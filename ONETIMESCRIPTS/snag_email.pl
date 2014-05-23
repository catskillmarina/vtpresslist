#!/usr/bin/perl

open (IN,$ARGV[0]);
@lines = <IN>;
close (IN);

foreach $line (@lines)
{
    @tokens = split(/ /, $line);
    foreach $tk (@tokens)
    {
        if( $tk =~ /mailto:(.+)"/ )
        {
            print $1;
            print "\n";
        }
    }
}
