{
  (* Above the rules, there is a section for SML code. 

     Helper functions, declarations, and necessary "open" statements
     go here.
   *)

   open Lexing (* getLexemeStart, lexbuf, ... see documentation *)

   exception LexicalError of string * int (* position *)

   fun lexerError lexbuf s = 
       raise LexicalError (s, getLexemeStart lexbuf);

   (* Token type, often defined by the next phase *)
   datatype TokenType 
     = Decimal of int | Octal of int | Hex of int
     | Float of real | Scientific of real
     | Symbol of string
     | EOF

   (* octal and hex need more involved helper functions *)

   fun value (c : char) : int (* return digit value, assume correct input *)
     = let val v = Char.ord c
       in if v >= 48 andalso v <= 57 (* 0 - 9 *) then v - 48
          else if v >= 65 andalso v <= 70 (* A - F *) then v - 55
          else if v >= 97 andalso v <= 102 (* a - f *) then v - 87
          else raise LexicalError ("Illegal digit in conversion", 0)
       end

   (* "lex" will later be the generated function "Token" *)
   fun repeat lex b = let val res = lex b
                      in res :: (if res = EOF then [] else repeat lex b)
                      end

   fun Scan lex s = let val buf = createLexerString s
                    in repeat lex buf
                    end
        handle LexicalError (msg,pos) 
           => (TextIO.output (TextIO.stdErr, msg ^ makestring pos ^"\n");[])

   (* what follows is the set of token definitions and actions. Format:

   regular_expression      { returned token, probably using "lexbuf" }

    *)
}

(* SML comments can be anywhere *)

(* these are shortcuts that can be used later *)
let nonzero = [`1`-`9`]
let digit   = `0` | nonzero

(* 
let not_allowed = digit not_allowed | "recursion not allowed" 
*)

rule Token = parse
    [` ` `\t` `\n` `\r`]       (* ignore white space (make a recursive call) *)
                               { Token lexbuf }

  | `a``b`*                 { Symbol (getLexeme lexbuf) }
  | `a`*`b`                 { Symbol (getLexeme lexbuf) }
  | (`a``b`)*`c`            { Symbol (getLexeme lexbuf) }
  
  | eof                        { EOF }
  | _ { lexerError lexbuf ("Lexical error at input `"^getLexeme lexbuf^ "`") };

(* Do not forget this semicolon. Noone will tell you where the error is *)
