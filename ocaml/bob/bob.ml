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
open Core.Std

let is_without message =
  if String.length message == 0 then true else false

let iw_yell message =
  String.uppercase message == message

let is_question message = 
  true

let response_for input =
  if (is_without input) then "Fine. Be that way!" else
    if is_yell input then "Woah, chill out!" else
      if is_question input then "Sure." else "Whatever."


