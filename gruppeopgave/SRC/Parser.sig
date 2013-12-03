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

val Program :
  (Lexing.lexbuf -> token) -> Lexing.lexbuf -> AbSyn.Prog;
