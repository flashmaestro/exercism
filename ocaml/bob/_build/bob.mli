(*
Answers to `hey` like a teenager.

## Examples

  # response_for ""
  "Fine. Be that way!"

  # response_for "Do you like math?"
  "Sure."

  # response_for "HELLO!"
  "Woah, chill out!"

  # response_for "Coding is cool."
  "Whatever."
*)
open Core.Std let response_for input =
	"test"


let is_without message =
	if String.length (String.trim message) == 0 then true else false


let iw_yell message =
	String.uppercase message == message

let is_question message = 
	true
