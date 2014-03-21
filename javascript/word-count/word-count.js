var Words = function(str) {
	var str_arr = str.trim().toLowerCase().split(" ");
	var result = {};
	for (var i = 0; i < str_arr.length; i++) {
		var c_index = str_arr[i].trim();
		if(c_index.length) {
			result[c_index] = result[c_index] ? result[c_index]+1:1;
		}
	}
	return result;
};
module.exports = Words;