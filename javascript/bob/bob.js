var Bob = function() {
	this.hey = function(str) {
		var result = "";
		var last_char = str.substr(-1);
		if(last_char==".") {
			result = "Fine. Be that way!";
		} else if(last_char=="!") {
			var str_temp = str.toUpperCase();
			if(str_temp == str) {
				result = "Woah, chill out!";
			} else {
				result = "Fine. Be that way!";
			}
		} else if(last_char=="?") {
			result = "Sure.";
		}
		return result;
	}
};
module.exports = Bob;