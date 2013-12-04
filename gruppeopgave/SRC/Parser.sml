local
type t__1__ = bool*AbSyn.Pos
type t__2__ = char*AbSyn.Pos
type t__3__ = string*AbSyn.Pos
type t__4__ = int*AbSyn.Pos
type t__5__ = string*AbSyn.Pos
in
datatype token =
    TAnd of AbSyn.Pos
  | TArray of AbSyn.Pos
  | TAssign of AbSyn.Pos
  | TBLit of t__1__
  | TBegin of AbSyn.Pos
  | TBool of AbSyn.Pos
  | TCLit of t__2__
  | TChar of AbSyn.Pos
  | TColon of AbSyn.Pos
  | TComma of AbSyn.Pos
  | TDo of AbSyn.Pos
  | TEOF of AbSyn.Pos
  | TElse of AbSyn.Pos
  | TEnd of AbSyn.Pos
  | TEq of AbSyn.Pos
  | TFunction of AbSyn.Pos
  | TId of t__3__
  | TIf of AbSyn.Pos
  | TInt of AbSyn.Pos
  | TLBracket of AbSyn.Pos
  | TLCurly of AbSyn.Pos
  | TLParen of AbSyn.Pos
  | TLess of AbSyn.Pos
  | TMinus of AbSyn.Pos
  | TNLit of t__4__
  | TNot of AbSyn.Pos
  | TOf of AbSyn.Pos
  | TOr of AbSyn.Pos
  | TPlus of AbSyn.Pos
  | TProcedure of AbSyn.Pos
  | TProgram of AbSyn.Pos
  | TRBracket of AbSyn.Pos
  | TRCurly of AbSyn.Pos
  | TRParen of AbSyn.Pos
  | TReturn of AbSyn.Pos
  | TSLit of t__5__
  | TSemi of AbSyn.Pos
  | TSlash of AbSyn.Pos
  | TThen of AbSyn.Pos
  | TTimes of AbSyn.Pos
  | TVar of AbSyn.Pos
  | TWhile of AbSyn.Pos
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";

 
   
(* Line 8, file Parser.sml *)
val yytransl = #[
  257 (* TAnd *),
  258 (* TArray *),
  259 (* TAssign *),
  260 (* TBLit *),
  261 (* TBegin *),
  262 (* TBool *),
  263 (* TCLit *),
  264 (* TChar *),
  265 (* TColon *),
  266 (* TComma *),
  267 (* TDo *),
  268 (* TEOF *),
  269 (* TElse *),
  270 (* TEnd *),
  271 (* TEq *),
  272 (* TFunction *),
  273 (* TId *),
  274 (* TIf *),
  275 (* TInt *),
  276 (* TLBracket *),
  277 (* TLCurly *),
  278 (* TLParen *),
  279 (* TLess *),
  280 (* TMinus *),
  281 (* TNLit *),
  282 (* TNot *),
  283 (* TOf *),
  284 (* TOr *),
  285 (* TPlus *),
  286 (* TProcedure *),
  287 (* TProgram *),
  288 (* TRBracket *),
  289 (* TRCurly *),
  290 (* TRParen *),
  291 (* TReturn *),
  292 (* TSLit *),
  293 (* TSemi *),
  294 (* TSlash *),
  295 (* TThen *),
  296 (* TTimes *),
  297 (* TVar *),
  298 (* TWhile *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\003\000\003\000\004\000\004\000\005\000\005\000\
\\006\000\006\000\007\000\007\000\008\000\008\000\008\000\008\000\
\\008\000\008\000\009\000\009\000\010\000\010\000\011\000\011\000\
\\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\\011\000\011\000\011\000\011\000\011\000\011\000\011\000\012\000\
\\012\000\013\000\013\000\014\000\015\000\015\000\016\000\016\000\
\\016\000\016\000\017\000\017\000\018\000\018\000\000\000";

val yylen = "\002\000\
\\002\000\004\000\002\000\001\000\009\000\007\000\001\000\003\000\
\\004\000\001\000\003\000\001\000\004\000\006\000\004\000\004\000\
\\002\000\003\000\001\000\004\000\001\000\000\000\001\000\001\000\
\\001\000\001\000\003\000\001\000\002\000\003\000\003\000\003\000\
\\003\000\003\000\003\000\003\000\003\000\003\000\004\000\001\000\
\\000\000\003\000\001\000\003\000\003\000\002\000\001\000\001\000\
\\001\000\003\000\001\000\000\000\003\000\001\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\000\000\055\000\000\000\000\000\001\000\000\000\
\\000\000\000\000\000\000\004\000\000\000\000\000\003\000\000\000\
\\000\000\000\000\000\000\000\000\043\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\049\000\048\000\047\000\044\000\000\000\
\\042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\007\000\010\000\000\000\000\000\000\000\000\000\012\000\000\000\
\\000\000\024\000\025\000\000\000\000\000\000\000\023\000\000\000\
\\026\000\028\000\000\000\017\000\000\000\000\000\000\000\000\000\
\\006\000\000\000\050\000\000\000\000\000\000\000\000\000\000\000\
\\051\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\046\000\000\000\
\\008\000\000\000\000\000\000\000\005\000\009\000\011\000\000\000\
\\020\000\013\000\000\000\027\000\038\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\045\000\016\000\
\\053\000\039\000\000\000\014\000";

val yydgoto = "\002\000\
\\004\000\005\000\011\000\012\000\040\000\041\000\046\000\042\000\
\\058\000\060\000\070\000\019\000\020\000\021\000\063\000\031\000\
\\072\000\073\000";

val yysindex = "\004\000\
\\238\254\000\000\011\255\000\000\019\255\251\254\000\000\000\255\
\\050\255\060\255\000\255\000\000\041\255\054\255\000\000\063\255\
\\063\255\081\255\061\255\072\255\000\000\076\255\086\000\111\255\
\\063\255\106\255\088\255\000\000\000\000\000\000\000\000\086\000\
\\000\000\101\255\003\255\050\000\050\000\063\255\050\000\092\255\
\\000\000\000\000\131\255\086\000\106\255\102\255\000\000\050\000\
\\050\000\000\000\000\000\044\255\050\000\050\000\000\000\050\000\
\\000\000\000\000\134\255\000\000\191\255\107\255\216\255\167\255\
\\000\000\050\000\000\000\108\255\004\255\170\255\114\255\118\255\
\\000\000\050\000\120\255\188\255\072\000\050\000\050\000\050\000\
\\050\000\050\000\050\000\050\000\106\255\050\000\000\000\053\255\
\\000\000\117\255\106\255\191\255\000\000\000\000\000\000\050\000\
\\000\000\000\000\135\255\000\000\000\000\217\255\146\255\146\255\
\\046\255\191\255\046\255\000\000\163\255\000\000\000\000\000\000\
\\000\000\000\000\106\255\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\165\255\000\000\000\000\000\000\000\000\145\255\
\\145\255\000\000\000\000\147\255\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\180\255\000\000\246\254\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\153\255\000\000\000\000\059\255\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\031\255\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\080\255\000\000\000\000\
\\000\000\153\255\000\000\000\000\001\255\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\180\255\
\\000\000\000\000\000\000\048\255\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\070\000\031\000\045\000\
\\237\255\068\255\006\000\093\255\151\255\127\255\000\000\000\000\
\\000\000\000\000\000\000\000\000";

val yygindex = "\000\000\
\\000\000\000\000\000\000\186\000\212\255\137\000\000\000\242\255\
\\230\255\000\000\226\255\184\000\000\000\235\255\000\000\013\000\
\\128\000\218\255";

val YYTABLESIZE = 368;
val yytable = "\043\000\
\\068\000\029\000\022\000\033\000\001\000\059\000\061\000\043\000\
\\064\000\071\000\029\000\029\000\003\000\029\000\075\000\009\000\
\\062\000\094\000\043\000\047\000\035\000\036\000\048\000\076\000\
\\049\000\077\000\022\000\006\000\029\000\010\000\007\000\008\000\
\\029\000\029\000\029\000\092\000\043\000\029\000\037\000\029\000\
\\109\000\090\000\043\000\021\000\045\000\039\000\112\000\102\000\
\\103\000\104\000\105\000\106\000\107\000\108\000\095\000\110\000\
\\067\000\113\000\043\000\019\000\018\000\023\000\016\000\048\000\
\\043\000\074\000\013\000\021\000\019\000\019\000\116\000\019\000\
\\048\000\019\000\049\000\017\000\014\000\037\000\037\000\018\000\
\\037\000\019\000\019\000\084\000\018\000\086\000\019\000\019\000\
\\043\000\023\000\019\000\019\000\019\000\033\000\024\000\019\000\
\\019\000\019\000\019\000\037\000\037\000\037\000\033\000\033\000\
\\037\000\033\000\037\000\033\000\025\000\026\000\034\000\054\000\
\\054\000\054\000\044\000\033\000\033\000\035\000\036\000\032\000\
\\033\000\033\000\035\000\036\000\033\000\033\000\033\000\032\000\
\\065\000\033\000\033\000\033\000\033\000\066\000\078\000\037\000\
\\032\000\032\000\069\000\032\000\037\000\032\000\039\000\087\000\
\\093\000\097\000\038\000\039\000\079\000\032\000\032\000\098\000\
\\100\000\111\000\032\000\032\000\080\000\081\000\032\000\032\000\
\\032\000\082\000\083\000\032\000\032\000\032\000\032\000\078\000\
\\114\000\081\000\078\000\084\000\085\000\086\000\083\000\115\000\
\\002\000\091\000\041\000\096\000\040\000\079\000\019\000\084\000\
\\079\000\086\000\052\000\015\000\078\000\080\000\081\000\078\000\
\\080\000\081\000\082\000\083\000\015\000\082\000\083\000\089\000\
\\022\000\099\000\079\000\000\000\084\000\079\000\086\000\084\000\
\\000\000\086\000\080\000\081\000\000\000\080\000\081\000\082\000\
\\083\000\078\000\082\000\083\000\034\000\101\000\000\000\000\000\
\\000\000\084\000\000\000\086\000\084\000\000\000\086\000\079\000\
\\088\000\036\000\000\000\000\000\000\000\031\000\000\000\080\000\
\\081\000\000\000\000\000\000\000\000\000\083\000\031\000\031\000\
\\000\000\031\000\037\000\031\000\000\000\000\000\084\000\000\000\
\\086\000\039\000\000\000\031\000\031\000\000\000\030\000\000\000\
\\031\000\031\000\000\000\000\000\031\000\031\000\031\000\030\000\
\\030\000\031\000\030\000\031\000\030\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\030\000\030\000\000\000\034\000\
\\000\000\030\000\030\000\000\000\000\000\030\000\030\000\030\000\
\\034\000\034\000\030\000\034\000\030\000\035\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\050\000\035\000\035\000\
\\051\000\035\000\034\000\000\000\000\000\000\000\034\000\034\000\
\\034\000\000\000\052\000\034\000\000\000\034\000\053\000\054\000\
\\035\000\000\000\055\000\056\000\035\000\035\000\035\000\036\000\
\\036\000\035\000\036\000\035\000\000\000\057\000\079\000\027\000\
\\000\000\000\000\000\000\028\000\000\000\029\000\080\000\081\000\
\\000\000\036\000\000\000\000\000\083\000\036\000\036\000\036\000\
\\030\000\000\000\036\000\000\000\036\000\084\000\000\000\086\000";

val yycheck = "\026\000\
\\045\000\001\001\013\001\025\000\001\000\036\000\037\000\034\000\
\\039\000\048\000\010\001\011\001\031\001\013\001\053\000\016\001\
\\038\000\014\001\045\000\034\000\017\001\018\001\020\001\054\000\
\\022\001\056\000\037\001\017\001\028\001\030\001\012\001\037\001\
\\032\001\033\001\034\001\066\000\063\000\037\001\035\001\039\001\
\\085\000\063\000\069\000\013\001\032\000\042\001\091\000\078\000\
\\079\000\080\000\081\000\082\000\083\000\084\000\069\000\086\000\
\\044\000\096\000\085\000\001\001\013\001\009\001\022\001\020\001\
\\091\000\022\001\017\001\037\001\010\001\011\001\115\000\013\001\
\\020\001\015\001\022\001\022\001\017\001\010\001\011\001\017\001\
\\013\001\023\001\024\001\038\001\037\001\040\001\028\001\029\001\
\\115\000\009\001\032\001\033\001\034\001\001\001\034\001\037\001\
\\038\001\039\001\040\001\032\001\033\001\034\001\010\001\011\001\
\\037\001\013\001\039\001\015\001\037\001\034\001\005\001\032\001\
\\033\001\034\001\027\001\023\001\024\001\017\001\018\001\009\001\
\\028\001\029\001\017\001\018\001\032\001\033\001\034\001\001\001\
\\037\001\037\001\038\001\039\001\040\001\003\001\001\001\035\001\
\\010\001\011\001\037\001\013\001\035\001\015\001\042\001\037\001\
\\037\001\032\001\041\001\042\001\015\001\023\001\024\001\034\001\
\\033\001\037\001\028\001\029\001\023\001\024\001\032\001\033\001\
\\034\001\028\001\029\001\037\001\038\001\039\001\040\001\001\001\
\\034\001\024\001\001\001\038\001\039\001\040\001\029\001\013\001\
\\012\001\011\001\034\001\010\001\034\001\015\001\003\001\038\001\
\\015\001\040\001\034\001\037\001\001\001\023\001\024\001\001\001\
\\023\001\024\001\028\001\029\001\011\000\028\001\029\001\063\000\
\\017\000\074\000\015\001\255\255\038\001\015\001\040\001\038\001\
\\255\255\040\001\023\001\024\001\255\255\023\001\024\001\028\001\
\\029\001\001\001\028\001\029\001\005\001\034\001\255\255\255\255\
\\255\255\038\001\255\255\040\001\038\001\255\255\040\001\015\001\
\\017\001\018\001\255\255\255\255\255\255\001\001\255\255\023\001\
\\024\001\255\255\255\255\255\255\255\255\029\001\010\001\011\001\
\\255\255\013\001\035\001\015\001\255\255\255\255\038\001\255\255\
\\040\001\042\001\255\255\023\001\024\001\255\255\001\001\255\255\
\\028\001\029\001\255\255\255\255\032\001\033\001\034\001\010\001\
\\011\001\037\001\013\001\039\001\015\001\255\255\255\255\255\255\
\\255\255\255\255\255\255\255\255\023\001\024\001\255\255\001\001\
\\255\255\028\001\029\001\255\255\255\255\032\001\033\001\034\001\
\\010\001\011\001\037\001\013\001\039\001\001\001\255\255\255\255\
\\255\255\255\255\255\255\255\255\255\255\004\001\010\001\011\001\
\\007\001\013\001\028\001\255\255\255\255\255\255\032\001\033\001\
\\034\001\255\255\017\001\037\001\255\255\039\001\021\001\022\001\
\\028\001\255\255\025\001\026\001\032\001\033\001\034\001\010\001\
\\011\001\037\001\013\001\039\001\255\255\036\001\015\001\002\001\
\\255\255\255\255\255\255\006\001\255\255\008\001\023\001\024\001\
\\255\255\028\001\255\255\255\255\029\001\032\001\033\001\034\001\
\\019\001\255\255\037\001\255\255\039\001\038\001\255\255\040\001";

val yyact = vector_ 56 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file Parser.grm, line 55 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 1 : AbSyn.Prog
val d__2__ = peekVal 0 : AbSyn.Pos
in
( (d__1__) ) end : AbSyn.Prog))
;
(* Rule 2, file Parser.grm, line 59 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 3 : AbSyn.Pos
val d__2__ = peekVal 2 : string*AbSyn.Pos
val d__3__ = peekVal 1 : AbSyn.Pos
val d__4__ = peekVal 0 : AbSyn.Prog
in
( (d__4__) ) end : AbSyn.Prog))
;
(* Rule 3, file Parser.grm, line 63 *)
val _ = update_ yyact 3
(fn () => repr(let
val d__1__ = peekVal 1 : AbSyn.Prog
val d__2__ = peekVal 0 : AbSyn.FunDec
in
( (d__1__) @ [(d__2__)] ) end : AbSyn.Prog))
;
(* Rule 4, file Parser.grm, line 64 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.FunDec
in
( [(d__1__)] ) end : AbSyn.Prog))
;
(* Rule 5, file Parser.grm, line 69 *)
val _ = update_ yyact 5
(fn () => repr(let
val d__1__ = peekVal 8 : AbSyn.Pos
val d__2__ = peekVal 7 : string*AbSyn.Pos
val d__3__ = peekVal 6 : AbSyn.Pos
val d__4__ = peekVal 5 : AbSyn.Dec list
val d__5__ = peekVal 4 : AbSyn.Pos
val d__6__ = peekVal 3 : AbSyn.Pos
val d__7__ = peekVal 2 : AbSyn.Type
val d__8__ = peekVal 1 : AbSyn.StmtBlock
val d__9__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.Func((d__7__), #1 (d__2__), (d__4__), (d__8__), (d__1__)) ) end : AbSyn.FunDec))
;
(* Rule 6, file Parser.grm, line 71 *)
val _ = update_ yyact 6
(fn () => repr(let
val d__1__ = peekVal 6 : AbSyn.Pos
val d__2__ = peekVal 5 : string*AbSyn.Pos
val d__3__ = peekVal 4 : AbSyn.Pos
val d__4__ = peekVal 3 : AbSyn.Dec list
val d__5__ = peekVal 2 : AbSyn.Pos
val d__6__ = peekVal 1 : AbSyn.StmtBlock
val d__7__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.Proc(#1 (d__2__), (d__4__), (d__6__), (d__1__)) ) end : AbSyn.FunDec))
;
(* Rule 7, file Parser.grm, line 75 *)
val _ = update_ yyact 7
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Stmt list
in
( AbSyn.Block ([], (d__1__)) ) end : AbSyn.StmtBlock))
;
(* Rule 8, file Parser.grm, line 76 *)
val _ = update_ yyact 8
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Pos
val d__2__ = peekVal 1 : AbSyn.Dec list
val d__3__ = peekVal 0 : AbSyn.Stmt list
in
( AbSyn.Block ((d__2__), (d__3__)) ) end : AbSyn.StmtBlock))
;
(* Rule 9, file Parser.grm, line 80 *)
val _ = update_ yyact 9
(fn () => repr(let
val d__1__ = peekVal 3 : AbSyn.Pos
val d__2__ = peekVal 2 : AbSyn.Stmt list
val d__3__ = peekVal 1 : AbSyn.Pos
val d__4__ = peekVal 0 : AbSyn.Pos
in
( (d__2__) ) end : AbSyn.Stmt list))
;
(* Rule 10, file Parser.grm, line 81 *)
val _ = update_ yyact 10
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Stmt
in
( [(d__1__)] ) end : AbSyn.Stmt list))
;
(* Rule 11, file Parser.grm, line 85 *)
val _ = update_ yyact 11
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Stmt list
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Stmt
in
( (d__1__) @ [(d__3__)] ) end : AbSyn.Stmt list))
;
(* Rule 12, file Parser.grm, line 86 *)
val _ = update_ yyact 12
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Stmt
in
( [(d__1__)] ) end : AbSyn.Stmt list))
;
(* Rule 13, file Parser.grm, line 91 *)
val _ = update_ yyact 13
(fn () => repr(let
val d__1__ = peekVal 3 : string*AbSyn.Pos
val d__2__ = peekVal 2 : AbSyn.Pos
val d__3__ = peekVal 1 : AbSyn.Exp list
val d__4__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.ProcCall (#1 (d__1__), (d__3__), #2 (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 14, file Parser.grm, line 92 *)
val _ = update_ yyact 14
(fn () => repr(let
val d__1__ = peekVal 5 : AbSyn.Pos
val d__2__ = peekVal 4 : AbSyn.Exp
val d__3__ = peekVal 3 : AbSyn.Pos
val d__4__ = peekVal 2 : AbSyn.StmtBlock
val d__5__ = peekVal 1 : AbSyn.Pos
val d__6__ = peekVal 0 : AbSyn.StmtBlock
in
( AbSyn.IfThEl ((d__2__), (d__4__), (d__6__), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 15, file Parser.grm, line 93 *)
val _ = update_ yyact 15
(fn () => repr(let
val d__1__ = peekVal 3 : AbSyn.Pos
val d__2__ = peekVal 2 : AbSyn.Exp
val d__3__ = peekVal 1 : AbSyn.Pos
val d__4__ = peekVal 0 : AbSyn.StmtBlock
in
( AbSyn.IfThEl ((d__2__), (d__4__), AbSyn.Block([],[]), (d__1__))) end : AbSyn.Stmt))
;
(* Rule 16, file Parser.grm, line 95 *)
val _ = update_ yyact 16
(fn () => repr(let
val d__1__ = peekVal 3 : AbSyn.Pos
val d__2__ = peekVal 2 : AbSyn.Exp
val d__3__ = peekVal 1 : AbSyn.Pos
val d__4__ = peekVal 0 : AbSyn.StmtBlock
in
( AbSyn.While ((d__2__), (d__4__), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 17, file Parser.grm, line 96 *)
val _ = update_ yyact 17
(fn () => repr(let
val d__1__ = peekVal 1 : AbSyn.Pos
val d__2__ = peekVal 0 : AbSyn.Exp option
in
( AbSyn.Return ((d__2__), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 18, file Parser.grm, line 97 *)
val _ = update_ yyact 18
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.LVAL
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Assign ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Stmt))
;
(* Rule 19, file Parser.grm, line 102 *)
val _ = update_ yyact 19
(fn () => repr(let
val d__1__ = peekVal 0 : string*AbSyn.Pos
in
( AbSyn.Var (#1 (d__1__)) ) end : AbSyn.LVAL))
;
(* Rule 20, file Parser.grm, line 103 *)
val _ = update_ yyact 20
(fn () => repr(let
val d__1__ = peekVal 3 : string*AbSyn.Pos
val d__2__ = peekVal 2 : AbSyn.Pos
val d__3__ = peekVal 1 : AbSyn.Exp list
val d__4__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.Index (#1 (d__1__), (d__3__)) ) end : AbSyn.LVAL))
;
(* Rule 21, file Parser.grm, line 107 *)
val _ = update_ yyact 21
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Exp
in
( SOME (d__1__) ) end : AbSyn.Exp option))
;
(* Rule 22, file Parser.grm, line 108 *)
val _ = update_ yyact 22
(fn () => repr(let
in
( NONE ) end : AbSyn.Exp option))
;
(* Rule 23, file Parser.grm, line 112 *)
val _ = update_ yyact 23
(fn () => repr(let
val d__1__ = peekVal 0 : int*AbSyn.Pos
in
( AbSyn.Literal (AbSyn.BVal(AbSyn.Num(#1 (d__1__))), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 24, file Parser.grm, line 113 *)
val _ = update_ yyact 24
(fn () => repr(let
val d__1__ = peekVal 0 : bool*AbSyn.Pos
in
( AbSyn.Literal (AbSyn.BVal(AbSyn.Log(#1 (d__1__))), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 25, file Parser.grm, line 114 *)
val _ = update_ yyact 25
(fn () => repr(let
val d__1__ = peekVal 0 : char*AbSyn.Pos
in
( AbSyn.Literal (AbSyn.BVal(AbSyn.Chr(#1 (d__1__))), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 26, file Parser.grm, line 115 *)
val _ = update_ yyact 26
(fn () => repr(let
val d__1__ = peekVal 0 : string*AbSyn.Pos
in
( AbSyn.StrLit (#1 (d__1__), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 27, file Parser.grm, line 116 *)
val _ = update_ yyact 27
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Pos
val d__2__ = peekVal 1 : AbSyn.Exp list
val d__3__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.ArrLit ((d__2__),(d__1__)) ) end : AbSyn.Exp))
;
(* Rule 28, file Parser.grm, line 117 *)
val _ = update_ yyact 28
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.LVAL
in
( AbSyn.LValue ((d__1__), (0,0)) ) end : AbSyn.Exp))
;
(* Rule 29, file Parser.grm, line 118 *)
val _ = update_ yyact 29
(fn () => repr(let
val d__1__ = peekVal 1 : AbSyn.Pos
val d__2__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Not ((d__2__), (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 30, file Parser.grm, line 119 *)
val _ = update_ yyact 30
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Plus ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 31, file Parser.grm, line 120 *)
val _ = update_ yyact 31
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Minus ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 32, file Parser.grm, line 121 *)
val _ = update_ yyact 32
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Times ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 33, file Parser.grm, line 122 *)
val _ = update_ yyact 33
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Div ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 34, file Parser.grm, line 123 *)
val _ = update_ yyact 34
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Equal ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 35, file Parser.grm, line 124 *)
val _ = update_ yyact 35
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Less ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 36, file Parser.grm, line 125 *)
val _ = update_ yyact 36
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.And ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 37, file Parser.grm, line 126 *)
val _ = update_ yyact 37
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Or ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 38, file Parser.grm, line 127 *)
val _ = update_ yyact 38
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Pos
val d__2__ = peekVal 1 : AbSyn.Exp
val d__3__ = peekVal 0 : AbSyn.Pos
in
( (d__2__) ) end : AbSyn.Exp))
;
(* Rule 39, file Parser.grm, line 128 *)
val _ = update_ yyact 39
(fn () => repr(let
val d__1__ = peekVal 3 : string*AbSyn.Pos
val d__2__ = peekVal 2 : AbSyn.Pos
val d__3__ = peekVal 1 : AbSyn.Exp list
val d__4__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.FunApp (#1 (d__1__), (d__3__), # 2(d__1__)) ) end : AbSyn.Exp))
;
(* Rule 40, file Parser.grm, line 133 *)
val _ = update_ yyact 40
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Dec list
in
( (d__1__) ) end : AbSyn.Dec list))
;
(* Rule 41, file Parser.grm, line 134 *)
val _ = update_ yyact 41
(fn () => repr(let
in
( [] ) end : AbSyn.Dec list))
;
(* Rule 42, file Parser.grm, line 138 *)
val _ = update_ yyact 42
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Dec list
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Dec
in
( (d__1__) @ [(d__3__)] ) end : AbSyn.Dec list))
;
(* Rule 43, file Parser.grm, line 139 *)
val _ = update_ yyact 43
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Dec
in
( [(d__1__)] ) end : AbSyn.Dec list))
;
(* Rule 44, file Parser.grm, line 143 *)
val _ = update_ yyact 44
(fn () => repr(let
val d__1__ = peekVal 2 : string*AbSyn.Pos
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Type
in
( AbSyn.Dec (#1 (d__1__), (d__3__), #2 (d__1__)) ) end : AbSyn.Dec))
;
(* Rule 45, file Parser.grm, line 147 *)
val _ = update_ yyact 45
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Dec list
val d__2__ = peekVal 1 : AbSyn.Dec
val d__3__ = peekVal 0 : AbSyn.Pos
in
( (d__1__) @ [(d__2__)] ) end : AbSyn.Dec list))
;
(* Rule 46, file Parser.grm, line 148 *)
val _ = update_ yyact 46
(fn () => repr(let
val d__1__ = peekVal 1 : AbSyn.Dec
val d__2__ = peekVal 0 : AbSyn.Pos
in
( [(d__1__)] ) end : AbSyn.Dec list))
;
(* Rule 47, file Parser.grm, line 152 *)
val _ = update_ yyact 47
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.Int ((d__1__)) ) end : AbSyn.Type))
;
(* Rule 48, file Parser.grm, line 153 *)
val _ = update_ yyact 48
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.Char ((d__1__)) ) end : AbSyn.Type))
;
(* Rule 49, file Parser.grm, line 154 *)
val _ = update_ yyact 49
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Pos
in
( AbSyn.Bool ((d__1__)) ) end : AbSyn.Type))
;
(* Rule 50, file Parser.grm, line 155 *)
val _ = update_ yyact 50
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Pos
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Type
in
( AbSyn.Array ((d__3__),(d__1__)) ) end : AbSyn.Type))
;
(* Rule 51, file Parser.grm, line 160 *)
val _ = update_ yyact 51
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Exp list
in
( (d__1__) ) end : AbSyn.Exp list))
;
(* Rule 52, file Parser.grm, line 161 *)
val _ = update_ yyact 52
(fn () => repr(let
in
( [] ) end : AbSyn.Exp list))
;
(* Rule 53, file Parser.grm, line 165 *)
val _ = update_ yyact 53
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : AbSyn.Pos
val d__3__ = peekVal 0 : AbSyn.Exp list
in
( (d__1__) :: (d__3__) ) end : AbSyn.Exp list))
;
(* Rule 54, file Parser.grm, line 166 *)
val _ = update_ yyact 54
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Exp
in
( [(d__1__)] ) end : AbSyn.Exp list))
;
(* Entry Program *)
val _ = update_ yyact 55 (fn () => raise yyexit (peekVal 0));
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
fun Program lexer lexbuf = yyparse yytables 1 lexer lexbuf;
(* Line 169, file Parser.grm *)

(* SML trailer *)
(* Line 660, file Parser.sml *)
