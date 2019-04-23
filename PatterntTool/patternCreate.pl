#!/usr/bin/perl  
#patternCreate.pl 
use strict; 
 
use lib 'lib'; 
 
use lib './lib'; 
use Pex::Text; 
 
die "filename length" if(!@ARGV); 
 
my $filename = shift; 
my $length = @ARGV ? shift : 200; 
 
open(FILE,">$filename") || die "Can't open : $!\n"; 
 
print FILE Pex::Text::PatternCreate($length); 
close(FILE); 
