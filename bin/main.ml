(* ini cuma komentar y *)
open Lwt.Infix
open Cohttp
open Cohttp_lwt_unix
open Yojson.Basic.Util

let uri = Uri.of_string "https://api.simsimi.vn/v1/simtalk"

let headers = Header.init ()
  |> fun h -> Header.add h "Content-Type" "application/x-www-form-urlencoded"

let post_request text =
  let body = "text=" ^ text ^ "&lc=id" in
  Client.post ~body:(`String body) ~headers uri >>= fun (_resp, body) -> 
  body |> Cohttp_lwt.Body.to_string >|= fun body ->
  let json = Yojson.Basic.from_string body in
  json |> member "message" |> to_string

let rec chat_loop () =
  print_string "you>: ";
  let user_input = read_line () in
  Lwt_main.run (post_request user_input) |> fun bot_response ->
  Printf.printf "bot>: %s\n" bot_response;
  chat_loop ()

let () = chat_loop ()
