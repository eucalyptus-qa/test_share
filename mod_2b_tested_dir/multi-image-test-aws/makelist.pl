#!/usr/bin/perl

use strict;

my $buf = `cat list.txt`;
my @myarray = split('\n', $buf);

foreach my $line (@myarray){
#	print $line . "\n";
	if( $line =~ /\.\.\/\.\.\/(.+)/ ){
		my $dir = $1;
#		print $dir . "\n";
		if( $dir =~ /gz/ ){
			print "CUSTOM_LOAD_IMAGE=" . $dir . "\n";
		}elsif( $dir =~ /vmlinuz/ ){
			print "CUSTOM_LOAD_IMAGE_VMLINUZ=" . $dir . "\n";
		}elsif( $dir =~ /init/ ){
			print "CUSTOM_LOAD_IMAGE_INITRD=" . $dir . "\n";
		};
	};
};

exit(0);


#CUSTOM_LOAD_IMAGE=instance_images/euca-centos-5.8-2012.05.14-x86_64/euca-centos-5.8-2012.05.14-x86_64.img
#CUSTOM_LOAD_IMAGE_VMLINUZ=instance_images/euca-centos-5.8-2012.05.14-x86_64/kvm-kernel/vmlinuz-2.6.28-11-generic
#CUSTOM_LOAD_IMAGE_INITRD=
