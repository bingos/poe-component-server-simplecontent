use strict;
use inc::Module::Install;
name 'POE-Component-Server-SimpleContent';
author 'Chris Williams <chris@bingosnet.co.uk>';
license 'perl';
perl_version '5.006';
version_from 'lib/POE/Component/Server/SimpleContent.pm';
abstract_from 'lib/POE/Component/Server/SimpleContent.pm';
build_requires 'Test::More' => 0.47;
requires 'Storable' => 0;
requires 'File::Basename' => 0;
requires 'Carp' => 0;
requires 'CGI' => 0;
requires 'MIME::Types' => 1.15;
requires 'URI::Escape' => 3.28;
requires 'Filesys::Virtual::Plain' => 0.07;
requires 'HTTP::Request' => 0;
requires 'HTTP::Response' => 0;
requires 'POE'    => 0.38;
my $value = prompt( 'Do you want to install optional module File::MMagic::XS [y/N]?', 'N' );
if ( $value =~ /^Y$/i ) {
   requires 'File::MMagic::XS' => 0.09;
}
$value = prompt( 'Do you want to install optional module File::MMagic [y/N]?', 'N' );
if ( $value =~ /^Y$/i ) {
   requires 'File::MMagic' => 1.27;
}
WriteAll();
