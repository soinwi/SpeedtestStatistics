#!/usr/bin/perl

open(infile, 'speedtest_results.txt');
local $/;
$text = <infile>;
close(infile);


$outstring = "hour;dl\n";

while( $text =~ m/(\d{2}):\d{2}.*?(\d+\.\d*) Mbit/gms ) {
    $outstring = "$outstring$1;$2\n";
}


open(FILE, '>csvData');
print FILE $outstring;
close(FILE);
