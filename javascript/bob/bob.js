var Bob = function() {
	this.hey = function(str) {
		if (this.is_question(str)) {
			return "Sure.";

		} else if (this.is_yell(str)) {
			return "Woah, chill out!";
			
		} else if (this.is_without(str)) {
			return "Fine. Be that way!";
		}
		return "Whatever.";
	}

	this.is_question = function(str) {
		return str.substr(-1) == "?" ? true : false;
	}

	this.is_yell = function(str) {
		var pattern = new RegExp("[A-z]");
		return str == str.toUpperCase() && pattern.test(str);
	}

	this.is_without = function(str) {
		return str.trim().length==0 ? true : false;
	}
};
module.exports = Bob;