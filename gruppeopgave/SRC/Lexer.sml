local open Obj Lexing in


  (* Lexer definition for Paladim language *)

  (* boilerplate code for all lexer files... *)
 open Lexing;

 exception LexicalError of string * (int * int) (* (message, (line, column)) *)

 val currentLine = ref 1
 val lineStartPos = ref [0]

 fun resetPos () = (currentLine :=1; lineStartPos := [0])

 fun getPos lexbuf = getLineCol (getLexemeStart lexbuf)
				(!currentLine)
				(!lineStartPos)

 and getLineCol pos line (p1::ps) =
       if pos>=p1 then (line, pos-p1)
       else getLineCol pos (line-1) ps
   | getLineCol pos line [] = raise LexicalError ("",(0,0))

 and showPos (l,c) = makestring l ^ "," ^ makestring c

 fun lexerError lexbuf s =
     raise LexicalError (s, getPos lexbuf)

(* This one is language specific, yet very common. Alternative would
   be to encode every keyword as a regexp. This one is much easier. *)
 fun keyword (s, pos) =
     case s of
        "program"       => Parser.TProgram   pos
       | "function"     => Parser.TFunction  pos
       | "procedure"    => Parser.TProcedure pos
       | "var"          => Parser.TVar       pos
       | "begin"        => Parser.TBegin     pos
       | "end"          => Parser.TEnd       pos
       | "if"           => Parser.TIf     pos
       | "then"         => Parser.TThen   pos
       | "else"         => Parser.TElse   pos
       | "while"        => Parser.TWhile  pos
       | "do"           => Parser.TDo     pos
       | "return"       => Parser.TReturn pos
       | "array"        => Parser.TArray  pos
       | "of"           => Parser.TOf     pos
       | "int"          => Parser.TInt    pos
       | "bool"         => Parser.TBool   pos
       | "char"         => Parser.TChar   pos
       | "and"          => Parser.TAnd    pos
       | "or"           => Parser.TOr     pos
       | "not"          => Parser.TNot    pos
       | "true"         => Parser.TBLit (true, pos)
       | "false"        => Parser.TBLit (false, pos)

       | _              => Parser.TId (s, pos)

   (* "lex" will later be the generated function "Token" *)
   fun repeat lex b
              = let val res = lex b
                in case res of
                         Parser.TEOF _ => []
                       | other => other :: repeat lex b
                end

   fun Scan lex s = let val buf = createLexerString s
                    in repeat lex buf
                    end
        handle LexicalError (msg,pos)
           => (TextIO.output (TextIO.stdErr, msg ^ showPos pos ^"\n");[])


fun action_24 lexbuf = (
 lexerError lexbuf "Illegal symbol in input" )
and action_23 lexbuf = (
 Parser.TEOF      (getPos lexbuf) )
and action_22 lexbuf = (
 Parser.TColon    (getPos lexbuf) )
and action_21 lexbuf = (
 Parser.TSemi     (getPos lexbuf) )
and action_20 lexbuf = (
 Parser.TComma    (getPos lexbuf) )
and action_19 lexbuf = (
 Parser.TRCurly   (getPos lexbuf) )
and action_18 lexbuf = (
 Parser.TLCurly   (getPos lexbuf) )
and action_17 lexbuf = (
 Parser.TRBracket (getPos lexbuf) )
and action_16 lexbuf = (
 Parser.TLBracket (getPos lexbuf) )
and action_15 lexbuf = (
 Parser.TRParen   (getPos lexbuf) )
and action_14 lexbuf = (
 Parser.TLParen   (getPos lexbuf) )
and action_13 lexbuf = (
 Parser.TLess     (getPos lexbuf) )
and action_12 lexbuf = (
 Parser.TEq       (getPos lexbuf) )
and action_11 lexbuf = (
 Parser.TSlash    (getPos lexbuf) )
and action_10 lexbuf = (
 Parser.TTimes    (getPos lexbuf) )
and action_9 lexbuf = (
 Parser.TMinus    (getPos lexbuf) )
and action_8 lexbuf = (
 Parser.TPlus     (getPos lexbuf) )
and action_7 lexbuf = (
 Parser.TAssign   (getPos lexbuf) )
and action_6 lexbuf = (
 keyword (getLexeme lexbuf,getPos lexbuf) )
and action_5 lexbuf = (
 Parser.TSLit
			    ((case String.fromCString (getLexeme lexbuf) of
			       NONE => lexerError lexbuf "Bad string constant"
			     | SOME s => String.substring(s,1,
							  String.size s - 2)),
			     getPos lexbuf) )
and action_4 lexbuf = (
 Parser.TCLit
			    ((case String.fromCString (getLexeme lexbuf) of
			       NONE => lexerError lexbuf "Bad char constant"
			     | SOME s => String.sub(s,1)),
			     getPos lexbuf) )
and action_3 lexbuf = (
 case Int.fromString (getLexeme lexbuf) of
                               NONE   => lexerError lexbuf "Bad integer"
                             | SOME i => Parser.TNLit (i, getPos lexbuf) )
and action_2 lexbuf = (
 currentLine := !currentLine+1;
                          lineStartPos :=  getLexemeStart lexbuf
			                   :: !lineStartPos;
                          Token lexbuf )
and action_1 lexbuf = (
 Token lexbuf )
and action_0 lexbuf = (
 Token lexbuf )
and state_0 lexbuf = (
 let val currChar = getNextChar lexbuf in
 if currChar >= #"A" andalso currChar <= #"Z" then  state_19 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_19 lexbuf
 else if currChar >= #"0" andalso currChar <= #"9" then  state_14 lexbuf
 else case currChar of
    #"\t" => state_3 lexbuf
 |  #"\r" => state_3 lexbuf
 |  #" " => state_3 lexbuf
 |  #"\n" => action_2 lexbuf
 |  #"\f" => action_2 lexbuf
 |  #"}" => action_19 lexbuf
 |  #"{" => action_18 lexbuf
 |  #"]" => action_17 lexbuf
 |  #"[" => action_16 lexbuf
 |  #"=" => action_12 lexbuf
 |  #"<" => action_13 lexbuf
 |  #";" => action_21 lexbuf
 |  #":" => state_15 lexbuf
 |  #"/" => state_13 lexbuf
 |  #"-" => action_9 lexbuf
 |  #"," => action_20 lexbuf
 |  #"+" => action_8 lexbuf
 |  #"*" => action_10 lexbuf
 |  #")" => action_15 lexbuf
 |  #"(" => action_14 lexbuf
 |  #"'" => state_6 lexbuf
 |  #"\"" => state_5 lexbuf
 |  #"\^@" => action_23 lexbuf
 |  _ => action_24 lexbuf
 end)
and state_3 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_0);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"\t" => state_34 lexbuf
 |  #"\r" => state_34 lexbuf
 |  #" " => state_34 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_5 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_24);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"(" andalso currChar <= #"[" then  state_31 lexbuf
 else if currChar >= #"]" andalso currChar <= #"~" then  state_31 lexbuf
 else case currChar of
    #"!" => state_31 lexbuf
 |  #" " => state_31 lexbuf
 |  #"&" => state_31 lexbuf
 |  #"%" => state_31 lexbuf
 |  #"$" => state_31 lexbuf
 |  #"#" => state_31 lexbuf
 |  #"\\" => state_33 lexbuf
 |  #"\"" => action_5 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_6 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_24);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"(" andalso currChar <= #"[" then  state_28 lexbuf
 else if currChar >= #"]" andalso currChar <= #"~" then  state_28 lexbuf
 else case currChar of
    #"!" => state_28 lexbuf
 |  #" " => state_28 lexbuf
 |  #"&" => state_28 lexbuf
 |  #"%" => state_28 lexbuf
 |  #"$" => state_28 lexbuf
 |  #"#" => state_28 lexbuf
 |  #"\\" => state_29 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_13 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_11);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"/" => state_27 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_14 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_3);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_26 lexbuf
 else backtrack lexbuf
 end)
and state_15 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_22);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"=" => action_7 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_19 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_6);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_24 lexbuf
 else if currChar >= #"A" andalso currChar <= #"Z" then  state_24 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_24 lexbuf
 else case currChar of
    #"_" => state_24 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_24 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_6);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_24 lexbuf
 else if currChar >= #"A" andalso currChar <= #"Z" then  state_24 lexbuf
 else if currChar >= #"a" andalso currChar <= #"z" then  state_24 lexbuf
 else case currChar of
    #"_" => state_24 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_26 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_3);
 let val currChar = getNextChar lexbuf in
 if currChar >= #"0" andalso currChar <= #"9" then  state_26 lexbuf
 else backtrack lexbuf
 end)
and state_27 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_1);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"\^@" => backtrack lexbuf
 |  #"\n" => backtrack lexbuf
 |  _ => state_27 lexbuf
 end)
and state_28 lexbuf = (
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"'" => action_4 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_29 lexbuf = (
 let val currChar = getNextChar lexbuf in
 if currChar >= #" " andalso currChar <= #"~" then  state_28 lexbuf
 else backtrack lexbuf
 end)
and state_31 lexbuf = (
 let val currChar = getNextChar lexbuf in
 if currChar >= #"(" andalso currChar <= #"[" then  state_31 lexbuf
 else if currChar >= #"]" andalso currChar <= #"~" then  state_31 lexbuf
 else case currChar of
    #"!" => state_31 lexbuf
 |  #" " => state_31 lexbuf
 |  #"&" => state_31 lexbuf
 |  #"%" => state_31 lexbuf
 |  #"$" => state_31 lexbuf
 |  #"#" => state_31 lexbuf
 |  #"\\" => state_33 lexbuf
 |  #"\"" => action_5 lexbuf
 |  _ => backtrack lexbuf
 end)
and state_33 lexbuf = (
 let val currChar = getNextChar lexbuf in
 if currChar >= #" " andalso currChar <= #"~" then  state_31 lexbuf
 else backtrack lexbuf
 end)
and state_34 lexbuf = (
 setLexLastPos lexbuf (getLexCurrPos lexbuf);
 setLexLastAction lexbuf (magic action_0);
 let val currChar = getNextChar lexbuf in
 case currChar of
    #"\t" => state_34 lexbuf
 |  #"\r" => state_34 lexbuf
 |  #" " => state_34 lexbuf
 |  _ => backtrack lexbuf
 end)
and Token lexbuf =
  (setLexLastAction lexbuf (magic dummyAction);
   setLexStartPos lexbuf (getLexCurrPos lexbuf);
   state_0 lexbuf)

(* The following checks type consistency of actions *)
val _ = fn _ => [action_24, action_23, action_22, action_21, action_20, action_19, action_18, action_17, action_16, action_15, action_14, action_13, action_12, action_11, action_10, action_9, action_8, action_7, action_6, action_5, action_4, action_3, action_2, action_1, action_0];

end
