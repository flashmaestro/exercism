let is_yell message =
  String.uppercase message = message && Str.string_match (Str.regexp "[^A-Z]*[A-Z]+[^A-Z]*") message 0

let is_question message = 
  message.[String.length message-1] = '?'

let response_for input = match String.trim input with
  | "" -> "Fine. Be that way!"
  | message when is_yell message -> "Woah, chill out!"
  | message when is_question message -> "Sure."
  | _ -> "Whatever."