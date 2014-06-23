local open Obj Lexing in


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

fun action_5 lexbuf = (
 lexerError lexbuf ("Lexical error at input `"^getLexeme lexbuf^ "`") )
and action_4 lexbuf = (
 EOF )
and action_3 lexbuf = (
 Symbol (getLexeme lexbuf) )
and action_2 lexbuf = (
 Symbol (getLexeme lexbuf) )
and action_1 lexbuf = (
 Symbol (getLexeme lexbuf) )
and action_0 lexbuf = (
 Token lexbuf )
and state_0 lexbuf = (
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"\n" => action_0 lexbuf
 |  #"\t" => action_0 lexbuf
 |  #"\r" => action_0 lexbuf
 |  #" " => action_0 lexbuf
 |  #"c" => action_3 lexbuf
 |  #"b" => action_2 lexbuf
 |  #"a" => state_4 lexbuf
 |  #"\^@" => action_4 lexbuf
 |  _ => action_5 lexbuf
 end)
and state_4 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"b" => state_8 lexbuf
 |  #"a" => state_7 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_7 lexbuf = (
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"b" => action_2 lexbuf
 |  #"a" => state_7 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_8 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"c" => action_3 lexbuf
 |  #"b" => state_10 lexbuf
 |  #"a" => state_9 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_9 lexbuf = (
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"b" => state_12 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_10 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"b" => state_10 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_12 lexbuf = (
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"c" => action_3 lexbuf
 |  #"a" => state_9 lexbuf
 |  _ => backtrack lexbuf
 end)
and Token lexbuf =
  (setLexLastAction lexbuf (magic dummyAction);
   setLexStartPos lexbuf (getLexCurrPos lexbuf);
   state_0 lexbuf)

(* The following checks type consistency of actions *)
val _ = fn _ => [action_5, action_4, action_3, action_2, action_1, action_0];

end
