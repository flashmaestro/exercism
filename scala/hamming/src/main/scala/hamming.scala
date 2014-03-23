object Hamming {
	def compute(original: String, other:String):Int = {
		var count = 0
		for(index <- if (original.length > other.length) other.indices else original.indices)
			if (original(index) != other(index)) count+=1
		count
	}
}