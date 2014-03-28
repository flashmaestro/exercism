package DNA;

use strict;

sub to_rna {
	my $original = shift;
	my @result = [];
	my $count = 0;
	my $char = '';
	foreach $char (split //, $original) {
	  if($char eq 'G') {
	    @result[$count] = 'C';
	  } elsif($char eq 'C') {
	    @result[$count] = 'G';
	  } elsif($char eq 'T') {
	    @result[$count] = 'A';
	  } elsif($char eq 'A') {
	    @result[$count] = 'U';
	  } else {
	    @result[$count] = $char;
	  }
	  $count++;
	}
	my $rna = join('',@result);
	return  $rna;
}
1;