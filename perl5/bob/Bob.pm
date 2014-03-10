package Bob;

use strict;

sub hey {
	my $string = shift;
	if (is_witout($string)) {
		return 'Fine. Be that way!';
	} elsif (is_yell($string)) {
		return 'Woah, chill out!';
	} elsif (is_question($string)) {
		return 'Sure.';
	} else {
		return 'Whatever.';
	}
}

sub is_witout {
	my $string = shift;
	$string =~ s/^\s+|\s_$//g;
	return length($string) == 0;
}

sub is_yell {
	my $string = shift;
	return $string eq uc($string) && $string =~ /[A-z]/;

}

sub is_question {
	my $string = shift;
	return index($string, "?") == length($string)-1;
}
1;