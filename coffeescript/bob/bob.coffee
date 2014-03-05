class Bob
	hey: (str) ->
		if this.is_question(str) 
			return "Sure.";
		else if this.is_yell(str)
			return "Woah, chill out!";
		else if this.is_without(str) 
			return "Fine. Be that way!";
		return "Whatever.";
	
	is_question: (str) ->
		str[-1..] is "?"
	
	is_yell: (str) ->
		str is str.toUpperCase() and /[A-z]/.test(str)
	

	is_without: (str) ->
		str.trim().length is 0

module.exports = Bob