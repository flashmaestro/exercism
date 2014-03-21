class Words
	count : {}
	words :[]
	constructor:(sentence) ->
		@words = sentence.trim().toLowerCase().split(" ")
		for i in [0...@words.length]
			c_index = @words[i].trim();
			if c_index.length
			    @count[c_index] = if @count[c_index]  then @count[c_index] +1 else 1
	

module.exports = Words