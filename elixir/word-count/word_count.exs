defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: HashDict.t
  def count(sentence) do
  	words = Regex.split(~r/[^\w\d\-]|_/,String.downcase(sentence))
  	result = HashDict.new()
  	result = counting(words,result)
  end

  def counting([], result), do: result
  def counting([head | tail ], result) do
  	if String.strip(head)!="" do
  		result = result
  		|> HashDict.update(head, 1, &(&1 + 1))
  	end
  	counting(tail, result)
  end
end
