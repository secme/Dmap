#!/usr/bin/perl

use HTTP::Request;
use HTML::TokeParser;
use WWW::Mechanize;


my $ua = LWP::UserAgent->new;
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");


print "Enter Domain: ";
chomp($dnsh=<STDIN>);

print "Showing relevant history of A for IPV4\n\n";
    $url = "https://securitytrails.com/domain/$dnsh/history/a";
    $request = $ua->get($url);
    $response = $request->content;

$p = HTML::TokeParser->new(\$response);
  while ($p->get_tag("tr")) {
      my @link = $p->get_trimmed_text("/tr");
      foreach(@link)
      # { print "$_\n"; }
    {  
	print "$_\n";
 
        sleep(1);
    }
    if ($response =~ m/^error/gi) {
        print "Something Went Wrong\n\n";
    }
}

print "Showing relevant history of AAAA for IP6\n\n";
    $url = "https://securitytrails.com/domain/$dnsh/history/aaaa";
    $request = $ua->get($url);
    $response = $request->content;

$p = HTML::TokeParser->new(\$response);
  while ($p->get_tag("tr")) {
      my @link = $p->get_trimmed_text("/tr");
      foreach(@link)
      # { print "$_\n"; }
    {  
	print "$_\n";
 
        sleep(1);
    }
    if ($response =~ m/^error/gi) {
        print "Something Went Wrong\n\n";
    }

print "Showing relevant history of Mail Servers\n\n";
    $url = "https://securitytrails.com/domain/$dnsh/history/mx";
    $request = $ua->get($url);
    $response = $request->content;

$p = HTML::TokeParser->new(\$response);
  while ($p->get_tag("tr")) {
      my @link = $p->get_trimmed_text("tr");
      foreach(@link)
      # { print "$_\n"; }
    {  
	print "$_\n";
 
        sleep(1);
    }
    if ($response =~ m/^error/gi) {
        print "Something Went Wrong\n\n";
    }

print "\n\n", item(), "Showing relevant history of Name Servers\n\n";
    $url = "https://securitytrails.com/domain/$dnsh/history/ns";
    $request = $ua->get($url);
    $response = $request->content;

$p = HTML::TokeParser->new(\$response);
  while ($p->get_tag("tr")) {
      my @link = $p->get_trimmed_text("/tr");
      foreach(@link)
      # { print "$_\n"; }
    {  
	print "$_\n";
 
        sleep(1);
    }
    if ($response =~ m/^error/gi) {
        print "Something Went Wrong\n\n";
    }


print "Showing history of DNS Zone\n\n";
    $url = "https://securitytrails.com/domain/$dnsh/history/soa";
    $request = $ua->get($url);
    $response = $request->content;

$p = HTML::TokeParser->new(\$response);
  while ($p->get_tag("tr")) {
      my @link = $p->get_trimmed_text("/tr");
      foreach(@link)
      # { print "$_\n"; }
    {  
	print "$_\n";
 
        sleep(1);
    }
    if ($response =~ m/^error/gi) {
        print "Something Went Wrong\n\n";
    }


print "Showing history of DNS txt for human readable data\n\n";
    $url = "https://securitytrails.com/domain/$dnsh/history/txt";
    $request = $ua->get($url);
    $response = $request->content;

$p = HTML::TokeParser->new(\$response);
  while ($p->get_tag("tr")) {
      my @link = $p->get_trimmed_text("/tr");
      foreach(@link)
      # { print "$_\n"; }
    {  
	print "$_\n";
 
        sleep(1);
    }
    if ($response =~ m/^error/gi) {
        print "Something Went Wrong\n\n";
    }


}
}
}
}
}