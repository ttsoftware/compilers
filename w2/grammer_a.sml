local
in
datatype token =
    CharA of  int 
  | CharB of  int 
  | EOF of  int 
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";

   (* See the Moscow ML manual for the syntax and structure. Roughly:

    `%``{`
         header (* with ML-like comments *)
    `%``}`
        declarations  /* with c-like comments */
    `%``%`
        rules         /* with c-like comments */
    `%``%`
        trailer (* with ML-like comments *)
    EOF

    The (optional) header and trailer contain ML code to include in the
    generated file (after the data declaration and at the end).

    Compiling this file with:
        $ mosmlyac -v G_AB.grm
    will generate the code in "G_AB.sig" and "G_AB.sml" files, and a
    file "G_AB.output" which describes the generated LR(0) automaton.
    *)

    type pos = int (* position in string *)
    (* Unfortunately, we cannot use this type in the declarations -
       the code ends up _after_ the data declaration. *)

    (* parse exception *)
    exception ParseErr of string * pos
(* Line 33, file grammer_a.sml *)
val yytransl = #[
  257 (* CharA *),
  258 (* CharB *),
  259 (* EOF *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\002\000\003\000\003\000\000\000";

val yylen = "\002\000\
\\004\000\002\000\000\000\003\000\000\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\003\000\006\000\000\000\000\000\000\000\000\000\
\\001\000\000\000\004\000";

val yydgoto = "\002\000\
\\004\000\005\000\007\000";

val yysindex = "\002\000\
\\000\255\000\000\000\000\000\000\003\255\004\255\002\255\006\255\
\\000\000\004\255\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\005\255\255\254\000\000\005\255\
\\000\000\000\000\000\000";

val yygindex = "\000\000\
\\000\000\000\000\001\000";

val YYTABLESIZE = 9;
val yytable = "\002\000\
\\003\000\002\000\001\000\006\000\009\000\008\000\010\000\005\000\
\\011\000";

val yycheck = "\001\001\
\\001\001\003\001\001\000\001\001\003\001\002\001\001\001\003\001\
\\008\000";

val yyact = vector_ 7 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file grammer_a.grm, line 51 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 3 :  int 
val d__2__ = peekVal 2 : int
val d__3__ = peekVal 1 : int
val d__4__ = peekVal 0 :  int 
in
( ((d__1__),(d__2__)) ) end : int*int))
;
(* Rule 2, file grammer_a.grm, line 53 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 1 : int
val d__2__ = peekVal 0 :  int 
in
( 0 ) end : int))
;
(* Rule 3, file grammer_a.grm, line 54 *)
val _ = update_ yyact 3
(fn () => repr(let
in
( 0 ) end : int))
;
(* Rule 4, file grammer_a.grm, line 56 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__1__ = peekVal 2 :  int 
val d__2__ = peekVal 1 :  int 
val d__3__ = peekVal 0 : int
in
( 0 ) end : int))
;
(* Rule 5, file grammer_a.grm, line 57 *)
val _ = update_ yyact 5
(fn () => repr(let
in
( 0 ) end : int))
;
(* Entry Start *)
val _ = update_ yyact 6 (fn () => raise yyexit (peekVal 0));
val yytables : parseTables =
  ( yyact,
    yytransl,
    yylhs,
    yylen,
    yydefred,
    yydgoto,
    yysindex,
    yyrindex,
    yygindex,
    YYTABLESIZE,
    yytable,
    yycheck );
fun Start lexer lexbuf = yyparse yytables 1 lexer lexbuf;
(* Line 60, file grammer_a.grm *)

(* SML trailer

 At this point we can use the parse function (%start above), whose type is
   Start : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> Exp;

  (Lexing.lexbuf -> token) is usually mosmllex-generated, but a simple hack
  here.

*)

  (* hacking a fake "lexer" that just reads characters *)
  fun token (#"a",pos) = (CharA pos)
    | token (#"b",pos) = (CharB pos)
    | token ( c  ,pos) = raise ParseErr ("No token " ^ makestring c, pos)

  val lexhackTokens = ref []
  fun lexhackInit s 
    = let val cs = String.explode s
          val ps = List.tabulate (String.size s, fn x=>x)
      in lexhackTokens := ListPair.map token (cs, ps) @ [EOF (String.size s)]
      end

  fun lexhackNexttoken _ 
    = let val ts = !lexhackTokens
      in case ts of
             []        => (EOF 0)
           | (t::rest) => (lexhackTokens := rest; t)
      end

  fun parse s = let val fakebuf = Lexing.createLexerString s (* not used *)
                in lexhackInit s; Start lexhackNexttoken fakebuf
                end
                 handle ParseErr (msg,pos) 
                        => (print (msg ^ makestring pos); (0,0))
(* Line 158, file grammer_a.sml *)
