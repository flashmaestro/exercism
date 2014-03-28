defmodule Teenager do
  def hey(input) do
    cond do
     is_witout(input) == true -> result = "Fine. Be that way!"
     is_yell(input) == true -> result = "Woah, chill out!"
     is_question(input) == true -> result = "Sure."
     true -> result = "Whatever."
   end
   result
 end

 def is_witout(input) do
   String.length(String.strip(input))==0
 end

 def is_yell(input) do
   String.upcase(input) == input && String.match(input, ~r/[A-z]/)
 end

 def is_question(input) do
   String.ends_with? input, "?"
 end
end
