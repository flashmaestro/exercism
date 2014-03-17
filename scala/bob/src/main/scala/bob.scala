class Bob {
	def hey(str: String):String = {
		if ( isWithout(str) ) {
			"Fine. Be that way!"
		} else if ( isYell(str ) ) {
			"Woah, chill out!"
		} else if ( isQuestion(str) ) {
			"Sure."
		} else {
			"Whatever."
		}
	}

	def isYell(str: String):Boolean ={
		str == str.toUpperCase() && str.exists(_.isUpper)
	}

	def isQuestion(str: String):Boolean ={
		str.endsWith("?")
	}

	def isWithout(str: String):Boolean ={
		str.trim.length == 0
	}
}