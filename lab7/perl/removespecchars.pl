#!/usr/bin/perl

use warnings;


#Matthew Groover
#11/02/20
#this program removes the text between the designated chars
#file and returns the modified strings into a new file 

my $filename = './control-char.txt'; #name of the file

open(FILE,'<', $filename) or die $!;
open(FH,'>','./new-text.txt')or die $!; #opening orginal for read and new for write

my $char;
my $read; #local var decs
my $poggers =1;
while ($read = read FILE, $char, 1) { #this loop reads the file char by char 
    
    if(ord($char)==3){ #this checks for ^C by turning the char into the ascii val to check against
       $poggers =0;
    }
    if($poggers){ #adds to the file based on whether or not our flag is valid
	print FH $char;
    }
    if(ord($char)=='2'){ #checks if ^B has been reached by checking for its ascii value 
	$poggers =1;
    }
} 
die "read error: $!" if not defined $read; #if we cant reach the file error is thrown
close(FILE);
close(FH);#closes both the files 
