open Vic2_ocaml_parser
open Printf

open Lexing

module E = MenhirLib.ErrorReports
module L = MenhirLib.LexerUtil



let show text positions =
  E.extract text positions
  |> E.sanitize
  |> E.compress
  |> E.shorten 20
let _ = 
    let text, lex_buf = L.read  Sys.argv.(1) in

    match Parser.modfile Lexer.token lex_buf with

    | v -> printf "%s\n%!" (Io.str_events v);
    | exception Lexer.Error msg -> eprintf "%s%!" msg;
    | exception Parser.Error -> 
            (*
            let value = show text in
            *)
            printf "error\n%s\n" text;







