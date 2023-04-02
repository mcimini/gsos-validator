open Batteries
open Unix
open Sys
open Filename
open Language
open ExecTransformation
(*
open Pretty_printer
open Pretty_printerLan

*)

open Lexing

let get_positions lexbuf = let pos = lexbuf.lex_curr_p in pos.pos_fname ^ ":" ^ string_of_int pos.pos_lnum  ^ ":" ^ string_of_int (pos.pos_cnum - pos.pos_bol + 1)


let folder_of_languages_repo = ref "languages/"


let languagesFromRepo () = 
	let dir = !folder_of_languages_repo in 
	let contents = Array.to_list (Sys.readdir dir) in
	(* let contents = List.rev_map (Filename.concat dir) contents in *)
	let files =
	  List.fold_left (fun (files) f ->
	       match (stat (dir ^ f)).st_kind with
		   | S_REG -> if String.ends_with f ".lan" then files @ [f] else files (* Regular file *)
	   	   | _ -> files)
		   [] contents in 
		   files

let parseOneLanguage filename : language =
  (* Parse the language, lan is the parsed language *)
  let input = open_in filename in 
  let filebuf = Lexing.from_channel input in
  let unusedVar = print_endline ("Reading the language: " ^ filename) in 
  let lan = try (ParserLan.fileLan LexerLan.token filebuf) with
						    | LexerLan.Error msg -> raise(Failure("Lexer error: " ^ get_positions filebuf ^ " with message: " ^ msg))
						    | ParserLan.Error -> raise(Failure("Parser error: " ^ get_positions filebuf)) in
	lan 
let parseTheTransformation filename = 
   (* Parse the transformation, transformation is the var of the parsed schema *)
   let inputSchema = (open_in filename) in
   let filebuf = Lexing.from_channel inputSchema in
   let transformation = try (Parser.file Lexer.token filebuf) with
 						    | Lexer.Error msg -> raise(Failure("Lexer error: " ^ get_positions filebuf ^ " with message: " ^ msg))
 						    | Parser.Error -> raise(Failure("Parser error: " ^ get_positions filebuf)) in
       transformation 
	   

let applyTransformationToOneLanguage (transformationFile : string) filenameLan : string = 	
	let transformation = parseTheTransformation transformationFile in 
	let lan = parseOneLanguage (!folder_of_languages_repo ^ filenameLan) in 
	(* We do not care about the result. Either the execution errors or it returns if it is correct *)
	if true then (
		try		(let _ = List.map (execTransformation lan) transformation in filenameLan ^ " is a GSOS language.")
		with | Failure(msg) -> filenameLan ^ ": is not a GSOS language: " ^ msg
	) else let _ = List.map (execTransformation lan) transformation in filenameLan ^ " is a GSOS language."
	

let () = match Array.to_list Sys.argv with 
	| [oneArg] -> print_endline ("Command line error: Executable needs the filename of a transformation, example: ./lnc transformation.tr");
	| [oneArg ; twoArg] -> 
		let transformationFile : string = Sys.argv.(1) in 
		print_endline (String.concat "\n" (List.map (applyTransformationToOneLanguage transformationFile) (languagesFromRepo ())));
	| [oneArg ; twoArg ; threeArg] -> 
		let tmp = folder_of_languages_repo :=  Sys.argv.(2) in 
		let transformationFile : string = Sys.argv.(1) in 
		print_endline (String.concat "\n" (List.map (applyTransformationToOneLanguage transformationFile) (languagesFromRepo ())));
	| otherwise -> print_endline ("Command line error: Too many arguments");


	(*	let nameOfLanguage = Filename.chop_extension filenameLan in *)
	(*	let _ = try Unix.mkdir ("./" ^ folder ^ folder_of_answers) 755 with Unix_error _ -> () in  IF folder for answers does not exist. but it does not work *)
	(*
let metavar = ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_' '-' ''']*
| metavar             { METAVAR (Lexing.lexeme lexbuf) }
%token <string> METAVAR
		
		
	*)