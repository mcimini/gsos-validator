
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WITH
    | UNIQUE
    | TRUE
    | THEN
    | SUBLIST
    | STRING
    | STEP
    | SKIP
    | SELECT
    | RULE
    | RSQUARE
    | RPAREN
    | PREM
    | OTHERWISE
    | OR
    | NOT
    | NOSTEP
    | NEXT
    | MUST
    | MID
    | MATCH
    | MAP
    | LTtargets
    | LTtarget
    | LTsources
    | LTsource
    | LSQUARE
    | LPAREN
    | LIST
    | LEFTOFSTEP
    | ISVAR
    | IN
    | IF
    | ID of (
# 5 "parser.mly"
       (string)
# 44 "parser.ml"
  )
    | GETVARS
    | FALSE
    | ERROR
    | EQUAL
    | EOF
    | ELSE
    | DOT
    | DISTINCT
    | CONCL
    | COMMA
    | COLON
    | ARROW
    | APPEND
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState161
  | MenhirState159
  | MenhirState156
  | MenhirState155
  | MenhirState154
  | MenhirState153
  | MenhirState152
  | MenhirState151
  | MenhirState148
  | MenhirState147
  | MenhirState135
  | MenhirState134
  | MenhirState132
  | MenhirState131
  | MenhirState130
  | MenhirState129
  | MenhirState128
  | MenhirState127
  | MenhirState126
  | MenhirState125
  | MenhirState124
  | MenhirState123
  | MenhirState121
  | MenhirState120
  | MenhirState119
  | MenhirState117
  | MenhirState116
  | MenhirState111
  | MenhirState109
  | MenhirState108
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState104
  | MenhirState102
  | MenhirState101
  | MenhirState100
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState88
  | MenhirState87
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState82
  | MenhirState80
  | MenhirState74
  | MenhirState73
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState67
  | MenhirState66
  | MenhirState64
  | MenhirState63
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState57
  | MenhirState56
  | MenhirState51
  | MenhirState47
  | MenhirState36
  | MenhirState33
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState20
  | MenhirState19
  | MenhirState18
  | MenhirState16
  | MenhirState15
  | MenhirState9
  | MenhirState2
  | MenhirState0

# 1 "parser.mly"
  
  open Language

# 165 "parser.ml"

let rec _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_pattern -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | LPAREN ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | LSQUARE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70

and _menhir_run73 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_pattern -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
    | LPAREN ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | LSQUARE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState73
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73

and _menhir_goto_list_pattern_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_pattern_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv583 * _menhir_state * 'tv_pattern) * _menhir_state * 'tv_list_pattern_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv581 * _menhir_state * 'tv_pattern) * _menhir_state * 'tv_list_pattern_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_pattern)), _, (xs : 'tv_list_pattern_)) = _menhir_stack in
        let _v : 'tv_list_pattern_ = 
# 187 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 214 "parser.ml"
         in
        _menhir_goto_list_pattern_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)) : 'freshtv584)
    | MenhirState155 | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv591 * _menhir_state) * _menhir_state * (
# 5 "parser.mly"
       (string)
# 222 "parser.ml"
        )) * _menhir_state * 'tv_list_pattern_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv587 * _menhir_state) * _menhir_state * (
# 5 "parser.mly"
       (string)
# 232 "parser.ml"
            )) * _menhir_state * 'tv_list_pattern_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv585 * _menhir_state) * _menhir_state * (
# 5 "parser.mly"
       (string)
# 239 "parser.ml"
            )) * _menhir_state * 'tv_list_pattern_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (op : (
# 5 "parser.mly"
       (string)
# 244 "parser.ml"
            ))), _, (args : 'tv_list_pattern_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_pattern = 
# 156 "parser.mly"
 ( PCONSTR(op, args) )
# 251 "parser.ml"
             in
            _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv589 * _menhir_state) * _menhir_state * (
# 5 "parser.mly"
       (string)
# 261 "parser.ml"
            )) * _menhir_state * 'tv_list_pattern_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
    | _ ->
        _menhir_fail ()

and _menhir_goto_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState155 | MenhirState69 | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv535 * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LPAREN ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | LSQUARE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | RPAREN ->
            _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv536)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv541 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv539 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState71 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s, (source : 'tv_pattern)), _), _, (label : 'tv_pattern)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_pattern = 
# 160 "parser.mly"
 ( PFORMULA("nstep", [source ; PVAR "L"]) )
# 318 "parser.ml"
             in
            _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)) : 'freshtv540)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv542)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv551 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState74
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv549 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState74 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv545 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 349 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv543 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
                let ((metavar2 : (
# 5 "parser.mly"
       (string)
# 357 "parser.ml"
                )) : (
# 5 "parser.mly"
       (string)
# 361 "parser.ml"
                )) = _v in
                ((let ((((_menhir_stack, _menhir_s, (source : 'tv_pattern)), _), _, (label : 'tv_pattern)), _) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_pattern = 
# 158 "parser.mly"
 ( PFORMULA("step", [source ; label ; PVAR metavar2]) )
# 369 "parser.ml"
                 in
                _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)) : 'freshtv546)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv547 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv548)) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv552)
    | MenhirState154 | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState80
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv555 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState80 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv553 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_pattern)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_pattern = 
# 164 "parser.mly"
 ( p )
# 407 "parser.ml"
             in
            _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)) : 'freshtv556)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv558)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv561 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | MID ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv559 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState82 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | LPAREN ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LSQUARE ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv560)
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState82
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv562)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv565 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState84
        | OTHERWISE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv563 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState84 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv564)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv566)
    | MenhirState152 | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv573 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv571 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv567 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CONCL ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | DISTINCT ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | ERROR ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | FALSE ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | GETVARS ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | ID _v ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
                | IF ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | ISVAR ->
                    _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | LPAREN ->
                    _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | LSQUARE ->
                    _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | MAP ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | MATCH ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | NOT ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | PREM ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | RULE ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | SKIP ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | TRUE ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | UNIQUE ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState90
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv568)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv569 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv574)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv579 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv575 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState125 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState128
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv576)
        | LEFTOFSTEP ->
            _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | NOSTEP ->
            _menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | OTHERWISE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv577 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState125 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState126
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv578)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv580)
    | _ ->
        _menhir_fail ()

and _menhir_run65 : _menhir_env -> 'ttv_tail * _menhir_state -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv533 * _menhir_state) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _2 = () in
    let _1 = () in
    let _v : 'tv_pattern = 
# 162 "parser.mly"
 ( PEMPTY )
# 708 "parser.ml"
     in
    _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)

and _menhir_reduce40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_pattern_ = 
# 185 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 717 "parser.ml"
     in
    _menhir_goto_list_pattern_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce46 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 5 "parser.mly"
       (string)
# 724 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (var : (
# 5 "parser.mly"
       (string)
# 730 "parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_pattern = 
# 154 "parser.mly"
 ( PVAR(var) )
# 735 "parser.ml"
     in
    _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expression__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv527 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_expression__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expression = let es =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 761 "parser.ml"
          
        in
        
# 102 "parser.mly"
 ( LIST(es) )
# 767 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv526)) : 'freshtv528)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expression__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv530)) : 'freshtv532)

and _menhir_goto_list_word_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_word_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state * 'tv_word) * _menhir_state * 'tv_list_word_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv513 * _menhir_state * 'tv_word) * _menhir_state * 'tv_list_word_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_word)), _, (xs : 'tv_list_word_)) = _menhir_stack in
        let _v : 'tv_list_word_ = 
# 187 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 791 "parser.ml"
         in
        _menhir_goto_list_word_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv523 * _menhir_state)) * _menhir_state * 'tv_list_word_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STRING ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv519 * _menhir_state)) * _menhir_state * 'tv_list_word_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv517 * _menhir_state)) * _menhir_state * 'tv_list_word_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (words : 'tv_list_word_)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 100 "parser.mly"
 ( ERROR(String.concat " " words) )
# 813 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv521 * _menhir_state)) * _menhir_state * 'tv_list_word_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
    | _ ->
        _menhir_fail ()

and _menhir_goto_word : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_word -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv511 * _menhir_state * 'tv_word) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AND ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | COMMA ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | CONCL ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IN ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MUST ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOT ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | OR ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | PREM ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | WITH ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | STRING ->
        _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv512)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run153 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | RSQUARE ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState153
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153

and _menhir_run154 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv509 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState154 in
        let (_v : (
# 5 "parser.mly"
       (string)
# 938 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
        | LEFTOFSTEP ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | LPAREN ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | LSQUARE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | NOSTEP ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState155
        | AND | APPEND | EQUAL | IN | MUST | OR | RPAREN | SUBLIST ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv510)
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | LPAREN ->
        _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | LSQUARE ->
        _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState154
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64

and _menhir_run66 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv507 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState66 in
        let (_v : (
# 5 "parser.mly"
       (string)
# 1015 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | LPAREN ->
            _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LSQUARE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LEFTOFSTEP | NOSTEP ->
            _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv508)
    | LPAREN ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | LSQUARE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState66
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66

and _menhir_run68 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (string)
# 1047 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce46 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_separated_nonempty_list_COMMA_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expression_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState152 | MenhirState153 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 1069 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv505 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv503 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expression_) : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_expression)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 1086 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)) : 'freshtv506)
    | _ ->
        _menhir_fail ()

and _menhir_run57 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_run61 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MATCH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv495 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MID ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_expression) * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | LPAREN ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LSQUARE ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv492)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_expression) * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)) : 'freshtv496)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | LPAREN ->
        _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | LSQUARE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_run92 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run96 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_run98 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState98
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 62 "parser.mly"
      ((Language.e list))
# 1437 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 62 "parser.mly"
      ((Language.e list))
# 1448 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 62 "parser.mly"
      ((Language.e list))
# 1456 "parser.ml"
        )) : (
# 62 "parser.mly"
      ((Language.e list))
# 1460 "parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv484)) : 'freshtv486)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 62 "parser.mly"
      ((Language.e list))
# 1470 "parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((lst : (
# 62 "parser.mly"
      ((Language.e list))
# 1478 "parser.ml"
        )) : (
# 62 "parser.mly"
      ((Language.e list))
# 1482 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_expression)) = _menhir_stack in
        let _v : (
# 62 "parser.mly"
      ((Language.e list))
# 1488 "parser.ml"
        ) = 
# 77 "parser.mly"
    ( e :: lst )
# 1492 "parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
    | _ ->
        _menhir_fail ()

and _menhir_reduce44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_expression__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 1503 "parser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_expression__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce32 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1510 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (var : (
# 5 "parser.mly"
       (string)
# 1516 "parser.ml"
    ))) = _menhir_stack in
    let _v : 'tv_expression = 
# 143 "parser.mly"
 ( ID(var) )
# 1521 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1528 "parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv479 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1540 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parser.mly"
       (string)
# 1545 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv475 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1556 "parser.ml"
            )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1560 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv473 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1567 "parser.ml"
            )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1571 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (metavar1 : (
# 5 "parser.mly"
       (string)
# 1576 "parser.ml"
            ))), _), (label : (
# 5 "parser.mly"
       (string)
# 1580 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expression = 
# 147 "parser.mly"
 ( FORMULA(Formula("nstep", [LangVar metavar1 ; LangVar label])) )
# 1587 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv477 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1597 "parser.ml"
            )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1601 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv481 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1612 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1620 "parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv469 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1632 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parser.mly"
       (string)
# 1637 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1648 "parser.ml"
            )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1652 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv461 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1662 "parser.ml"
                )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1666 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 1671 "parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv459 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1678 "parser.ml"
                )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1682 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let ((metavar2 : (
# 5 "parser.mly"
       (string)
# 1687 "parser.ml"
                )) : (
# 5 "parser.mly"
       (string)
# 1691 "parser.ml"
                )) = _v in
                ((let (((_menhir_stack, _menhir_s, (metavar1 : (
# 5 "parser.mly"
       (string)
# 1696 "parser.ml"
                ))), _), (label : (
# 5 "parser.mly"
       (string)
# 1700 "parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_expression = 
# 145 "parser.mly"
 ( FORMULA(Formula("step", [LangVar metavar1 ; LangVar label ; LangVar metavar2])) )
# 1707 "parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)) : 'freshtv462)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv463 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1717 "parser.ml"
                )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1721 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv467 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1732 "parser.ml"
            )) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 1736 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv471 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 1747 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)

and _menhir_reduce42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_word_ = 
# 185 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 1757 "parser.ml"
     in
    _menhir_goto_list_word_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv457) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 186 "parser.mly"
 ( "with" )
# 1771 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv455) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 174 "parser.mly"
 ( "premises" )
# 1785 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv453) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 180 "parser.mly"
 ( "or" )
# 1799 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv451) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 176 "parser.mly"
 ( "not" )
# 1813 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv449) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 182 "parser.mly"
 ( "must" )
# 1827 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv447) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 170 "parser.mly"
 ( "in" )
# 1841 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv448)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (string)
# 1848 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv445) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((str : (
# 5 "parser.mly"
       (string)
# 1858 "parser.ml"
    )) : (
# 5 "parser.mly"
       (string)
# 1862 "parser.ml"
    )) = _v in
    ((let _v : 'tv_word = 
# 168 "parser.mly"
 ( str )
# 1867 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv443) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 172 "parser.mly"
 ( "conclusion" )
# 1881 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv441) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 184 "parser.mly"
 ( "," )
# 1895 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_word = 
# 178 "parser.mly"
 ( "and" )
# 1909 "parser.ml"
     in
    _menhir_goto_word _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | OTHERWISE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState56 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState100
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv254)
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv256)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 131 "parser.mly"
 ( EQUAL(LISTDIFF(e1,e2), LIST []) )
# 2021 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv260)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv261 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 139 "parser.mly"
 ( OR(e1,e2) )
# 2058 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv264)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv267 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState86
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv265 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((((((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (p1 : 'tv_pattern)), _), _, (p2 : 'tv_pattern)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_expression = 
# 126 "parser.mly"
 ( IF(EQUAL(LISTDIFF(LISTDIFF(e1,SELECT(e1,p1, ID("self"))),SELECT(e1,p2, ID("self"))),LIST []),e1,e2) )
# 2099 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv268)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv271 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState91
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv269 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (p : 'tv_pattern)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_expression = 
# 124 "parser.mly"
 ( SELECT(e1,p, e2) )
# 2138 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv272)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 133 "parser.mly"
 ( IN(e1,e2) )
# 2175 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv276)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv279 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState95
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 135 "parser.mly"
 ( EQUAL(e1,e2) )
# 2212 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv280)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv283 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState97
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv281 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 129 "parser.mly"
 ( APPEND(e1,e2) )
# 2249 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv284)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv287 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState99
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 137 "parser.mly"
 ( AND(e1,e2) )
# 2286 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv288)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv291 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv289 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 122 "parser.mly"
 ( UNIQUE(SELECT(e1,PVAR "Var", FORMULA(Formula("step",[LangVar "Var"]))), ID "mode", "u", "n", IF(EQUAL(ID "u", MAP(LIST [],LIST [])),TRUE,e2)) )
# 2324 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv292)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv297 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv295 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState102 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv293 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 112 "parser.mly"
 ( GETVARS(e) )
# 2366 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv298)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv299 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState104 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState105
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv302)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv305 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv303 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState106 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv304)
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv306)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv309 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv307 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)), _), _, (e3 : 'tv_expression)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 108 "parser.mly"
 ( IF(e1,e2,e3) )
# 2555 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv310)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv313 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState109 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 110 "parser.mly"
 ( ISVAR(e) )
# 2597 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv316)
    | MenhirState154 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState111 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 149 "parser.mly"
 ( e )
# 2640 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv322)
    | MenhirState152 | MenhirState153 | MenhirState117 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState116 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv324)
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState116
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expression)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 2726 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv328)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState119 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv330)
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv332)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv337 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv335 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState121 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv333 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expression)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 104 "parser.mly"
 ( MAP(e1, e2) )
# 2843 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv338)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv339 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState123 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run68 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LPAREN ->
                _menhir_run66 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LSQUARE ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv340)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv342)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv345 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv343 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expression)), _), _, (p : 'tv_pattern)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 120 "parser.mly"
 ( IF(EQUAL(LIST([]),SELECT(LIST([e1]),p,TRUE)),e2,TRUE) )
# 2928 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv346)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv351 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | OTHERWISE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv347 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState129 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ID _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LPAREN ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LSQUARE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv348)
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv349 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expression)), _), _, (p : 'tv_pattern)), _), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 116 "parser.mly"
 ( IF(EQUAL(LIST([]),SELECT(LIST([e1]),p,e2)),TRUE,TRUE) )
# 3015 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv352)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv355 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv353 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expression)), _), _, (p : 'tv_pattern)), _), _, (e2 : 'tv_expression)), _), _, (e3 : 'tv_expression)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 118 "parser.mly"
 ( IF(EQUAL(LIST([]),SELECT(LIST([e1]),p,e2)),e3,TRUE) )
# 3055 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv356)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState132 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 141 "parser.mly"
 ( NOT(e) )
# 3097 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv362)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv365 * _menhir_state))))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv363 * _menhir_state))))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expression)) = _menhir_stack in
            let _5 = () in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 106 "parser.mly"
 ( RULE(e) )
# 3140 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv366)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv413 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState135 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv407 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
                let (_v : (
# 5 "parser.mly"
       (string)
# 3171 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COMMA ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv403 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3182 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | ID _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv399 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3192 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        let (_v : (
# 5 "parser.mly"
       (string)
# 3197 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RPAREN ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3208 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 3212 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let _tok = _menhir_env._menhir_token in
                            match _tok with
                            | NEXT ->
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : ((((((('freshtv391 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3222 "parser.ml"
                                ))) * (
# 5 "parser.mly"
       (string)
# 3226 "parser.ml"
                                ))) = Obj.magic _menhir_stack in
                                ((let _menhir_env = _menhir_discard _menhir_env in
                                let _tok = _menhir_env._menhir_token in
                                match _tok with
                                | LPAREN ->
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : (((((((('freshtv387 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3236 "parser.ml"
                                    ))) * (
# 5 "parser.mly"
       (string)
# 3240 "parser.ml"
                                    )))) = Obj.magic _menhir_stack in
                                    ((let _menhir_env = _menhir_discard _menhir_env in
                                    let _tok = _menhir_env._menhir_token in
                                    match _tok with
                                    | ID _v ->
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : ((((((((('freshtv383 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3250 "parser.ml"
                                        ))) * (
# 5 "parser.mly"
       (string)
# 3254 "parser.ml"
                                        ))))) = Obj.magic _menhir_stack in
                                        let (_v : (
# 5 "parser.mly"
       (string)
# 3259 "parser.ml"
                                        )) = _v in
                                        ((let _menhir_stack = (_menhir_stack, _v) in
                                        let _menhir_env = _menhir_discard _menhir_env in
                                        let _tok = _menhir_env._menhir_token in
                                        match _tok with
                                        | COMMA ->
                                            let (_menhir_env : _menhir_env) = _menhir_env in
                                            let (_menhir_stack : (((((((((('freshtv379 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3270 "parser.ml"
                                            ))) * (
# 5 "parser.mly"
       (string)
# 3274 "parser.ml"
                                            ))))) * (
# 5 "parser.mly"
       (string)
# 3278 "parser.ml"
                                            )) = Obj.magic _menhir_stack in
                                            ((let _menhir_env = _menhir_discard _menhir_env in
                                            let _tok = _menhir_env._menhir_token in
                                            match _tok with
                                            | ID _v ->
                                                let (_menhir_env : _menhir_env) = _menhir_env in
                                                let (_menhir_stack : ((((((((((('freshtv375 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3288 "parser.ml"
                                                ))) * (
# 5 "parser.mly"
       (string)
# 3292 "parser.ml"
                                                ))))) * (
# 5 "parser.mly"
       (string)
# 3296 "parser.ml"
                                                ))) = Obj.magic _menhir_stack in
                                                let (_v : (
# 5 "parser.mly"
       (string)
# 3301 "parser.ml"
                                                )) = _v in
                                                ((let _menhir_stack = (_menhir_stack, _v) in
                                                let _menhir_env = _menhir_discard _menhir_env in
                                                let _tok = _menhir_env._menhir_token in
                                                match _tok with
                                                | RPAREN ->
                                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                                    let (_menhir_stack : (((((((((((('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3312 "parser.ml"
                                                    ))) * (
# 5 "parser.mly"
       (string)
# 3316 "parser.ml"
                                                    ))))) * (
# 5 "parser.mly"
       (string)
# 3320 "parser.ml"
                                                    ))) * (
# 5 "parser.mly"
       (string)
# 3324 "parser.ml"
                                                    )) = Obj.magic _menhir_stack in
                                                    ((let _menhir_env = _menhir_discard _menhir_env in
                                                    let _tok = _menhir_env._menhir_token in
                                                    match _tok with
                                                    | COLON ->
                                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                                        let (_menhir_stack : ((((((((((((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3334 "parser.ml"
                                                        ))) * (
# 5 "parser.mly"
       (string)
# 3338 "parser.ml"
                                                        ))))) * (
# 5 "parser.mly"
       (string)
# 3342 "parser.ml"
                                                        ))) * (
# 5 "parser.mly"
       (string)
# 3346 "parser.ml"
                                                        ))) = Obj.magic _menhir_stack in
                                                        ((let _menhir_env = _menhir_discard _menhir_env in
                                                        let _tok = _menhir_env._menhir_token in
                                                        match _tok with
                                                        | CONCL ->
                                                            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | DISTINCT ->
                                                            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | ERROR ->
                                                            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | FALSE ->
                                                            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | GETVARS ->
                                                            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | ID _v ->
                                                            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
                                                        | IF ->
                                                            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | ISVAR ->
                                                            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | LPAREN ->
                                                            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | LSQUARE ->
                                                            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | MAP ->
                                                            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | MATCH ->
                                                            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | NOT ->
                                                            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | PREM ->
                                                            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | RULE ->
                                                            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | SKIP ->
                                                            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | TRUE ->
                                                            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | UNIQUE ->
                                                            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState147
                                                        | _ ->
                                                            assert (not _menhir_env._menhir_error);
                                                            _menhir_env._menhir_error <- true;
                                                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv368)
                                                    | _ ->
                                                        assert (not _menhir_env._menhir_error);
                                                        _menhir_env._menhir_error <- true;
                                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                                        let (_menhir_stack : ((((((((((((('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3398 "parser.ml"
                                                        ))) * (
# 5 "parser.mly"
       (string)
# 3402 "parser.ml"
                                                        ))))) * (
# 5 "parser.mly"
       (string)
# 3406 "parser.ml"
                                                        ))) * (
# 5 "parser.mly"
       (string)
# 3410 "parser.ml"
                                                        ))) = Obj.magic _menhir_stack in
                                                        ((let (((((_menhir_stack, _menhir_s), _), _), _), _) = _menhir_stack in
                                                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
                                                | _ ->
                                                    assert (not _menhir_env._menhir_error);
                                                    _menhir_env._menhir_error <- true;
                                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                                    let (_menhir_stack : (((((((((((('freshtv373 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3421 "parser.ml"
                                                    ))) * (
# 5 "parser.mly"
       (string)
# 3425 "parser.ml"
                                                    ))))) * (
# 5 "parser.mly"
       (string)
# 3429 "parser.ml"
                                                    ))) * (
# 5 "parser.mly"
       (string)
# 3433 "parser.ml"
                                                    )) = Obj.magic _menhir_stack in
                                                    ((let (((((_menhir_stack, _menhir_s), _), _), _), _) = _menhir_stack in
                                                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
                                            | _ ->
                                                assert (not _menhir_env._menhir_error);
                                                _menhir_env._menhir_error <- true;
                                                let (_menhir_env : _menhir_env) = _menhir_env in
                                                let (_menhir_stack : ((((((((((('freshtv377 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3444 "parser.ml"
                                                ))) * (
# 5 "parser.mly"
       (string)
# 3448 "parser.ml"
                                                ))))) * (
# 5 "parser.mly"
       (string)
# 3452 "parser.ml"
                                                ))) = Obj.magic _menhir_stack in
                                                ((let ((((_menhir_stack, _menhir_s), _), _), _) = _menhir_stack in
                                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)) : 'freshtv380)
                                        | _ ->
                                            assert (not _menhir_env._menhir_error);
                                            _menhir_env._menhir_error <- true;
                                            let (_menhir_env : _menhir_env) = _menhir_env in
                                            let (_menhir_stack : (((((((((('freshtv381 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3463 "parser.ml"
                                            ))) * (
# 5 "parser.mly"
       (string)
# 3467 "parser.ml"
                                            ))))) * (
# 5 "parser.mly"
       (string)
# 3471 "parser.ml"
                                            )) = Obj.magic _menhir_stack in
                                            ((let ((((_menhir_stack, _menhir_s), _), _), _) = _menhir_stack in
                                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)) : 'freshtv384)
                                    | _ ->
                                        assert (not _menhir_env._menhir_error);
                                        _menhir_env._menhir_error <- true;
                                        let (_menhir_env : _menhir_env) = _menhir_env in
                                        let (_menhir_stack : ((((((((('freshtv385 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3482 "parser.ml"
                                        ))) * (
# 5 "parser.mly"
       (string)
# 3486 "parser.ml"
                                        ))))) = Obj.magic _menhir_stack in
                                        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
                                | _ ->
                                    assert (not _menhir_env._menhir_error);
                                    _menhir_env._menhir_error <- true;
                                    let (_menhir_env : _menhir_env) = _menhir_env in
                                    let (_menhir_stack : (((((((('freshtv389 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3497 "parser.ml"
                                    ))) * (
# 5 "parser.mly"
       (string)
# 3501 "parser.ml"
                                    )))) = Obj.magic _menhir_stack in
                                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
                            | _ ->
                                assert (not _menhir_env._menhir_error);
                                _menhir_env._menhir_error <- true;
                                let (_menhir_env : _menhir_env) = _menhir_env in
                                let (_menhir_stack : ((((((('freshtv393 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3512 "parser.ml"
                                ))) * (
# 5 "parser.mly"
       (string)
# 3516 "parser.ml"
                                ))) = Obj.magic _menhir_stack in
                                ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : (((((('freshtv397 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3527 "parser.ml"
                            ))) * (
# 5 "parser.mly"
       (string)
# 3531 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)) : 'freshtv400)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((((('freshtv401 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3542 "parser.ml"
                        ))) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv405 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3553 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)) : 'freshtv408)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv409 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135) : 'freshtv414)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((((('freshtv417 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3585 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 3589 "parser.ml"
        ))))) * (
# 5 "parser.mly"
       (string)
# 3593 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 3597 "parser.ml"
        )))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState148
        | COMMA | CONCL | DISTINCT | ELSE | EOF | ERROR | FALSE | GETVARS | ID _ | IF | ISVAR | LPAREN | MAP | MATCH | NOT | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | THEN | TRUE | UNIQUE | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((((((('freshtv415 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3623 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 3627 "parser.ml"
            ))))) * (
# 5 "parser.mly"
       (string)
# 3631 "parser.ml"
            ))) * (
# 5 "parser.mly"
       (string)
# 3635 "parser.ml"
            )))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((((((((_menhir_stack, _menhir_s), _, (e1 : 'tv_expression)), _), (nameMap : (
# 5 "parser.mly"
       (string)
# 3640 "parser.ml"
            ))), (tag : (
# 5 "parser.mly"
       (string)
# 3644 "parser.ml"
            ))), (uniq : (
# 5 "parser.mly"
       (string)
# 3648 "parser.ml"
            ))), (newpremises : (
# 5 "parser.mly"
       (string)
# 3652 "parser.ml"
            ))), _, (e2 : 'tv_expression)) = _menhir_stack in
            let _15 = () in
            let _14 = () in
            let _12 = () in
            let _10 = () in
            let _9 = () in
            let _8 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 114 "parser.mly"
 ( UNIQUE(e1, ID(nameMap), uniq, newpremises, e2) )
# 3667 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState148) : 'freshtv418)
    | MenhirState151 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | CONCL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | DISTINCT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState151 in
            (_menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv420)
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | ERROR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | FALSE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | GETVARS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | ID _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | ISVAR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | LSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState151 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CONCL ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | DISTINCT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | ERROR ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | FALSE ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | GETVARS ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | ID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState152 in
                let (_v : (
# 5 "parser.mly"
       (string)
# 3736 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LEFTOFSTEP ->
                    _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState156
                | NOSTEP ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState156
                | AND | APPEND | COMMA | EQUAL | IN | LSQUARE | MUST | OR | RSQUARE | SUBLIST ->
                    _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv422)
            | IF ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | ISVAR ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | LPAREN ->
                _menhir_run154 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | LSQUARE ->
                _menhir_run153 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | MAP ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | MATCH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | NOT ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | PREM ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | RULE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | SKIP ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | TRUE ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | UNIQUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | RSQUARE ->
                _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv424)
        | MAP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | NOT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | PREM ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | RULE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | UNIQUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv426)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | APPEND ->
            _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState161 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (e : 'tv_expression)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 59 "parser.mly"
      ((Language.e))
# 3830 "parser.ml"
            ) = 
# 68 "parser.mly"
   ( TRUE )
# 3834 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv431) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 59 "parser.mly"
      ((Language.e))
# 3842 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 59 "parser.mly"
      ((Language.e))
# 3850 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv427) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 59 "parser.mly"
      ((Language.e))
# 3858 "parser.ml"
            )) : (
# 59 "parser.mly"
      ((Language.e))
# 3862 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv428)) : 'freshtv430)) : 'freshtv432)) : 'freshtv434)) : 'freshtv436)
        | EQUAL ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | IN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | LSQUARE ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | MUST ->
            _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | OR ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | SUBLIST ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState161
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv438)
    | _ ->
        _menhir_fail ()

and _menhir_reduce36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _1 = () in
    let _v : (
# 62 "parser.mly"
      ((Language.e list))
# 3890 "parser.ml"
    ) = 
# 73 "parser.mly"
    ( [] )
# 3894 "parser.ml"
     in
    _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv88)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 3915 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state) * _menhir_state * (
# 5 "parser.mly"
       (string)
# 3924 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState148 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((((('freshtv101 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3953 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 3957 "parser.ml"
        ))))) * (
# 5 "parser.mly"
       (string)
# 3961 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 3965 "parser.ml"
        )))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((((('freshtv103 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 3974 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 3978 "parser.ml"
        ))))) * (
# 5 "parser.mly"
       (string)
# 3982 "parser.ml"
        ))) * (
# 5 "parser.mly"
       (string)
# 3986 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), _), _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState135 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv107 * _menhir_state))))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv111 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv113 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv115 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv117 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv119 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv121 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv123 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv129 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv131 * _menhir_state)) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv143 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv145 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv147 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv149 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv161 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv175 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv177 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv183 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv185 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv187 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv189 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv191 * _menhir_state * 'tv_expression) * _menhir_state))) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state * 'tv_pattern) * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_pattern) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * (
# 5 "parser.mly"
       (string)
# 4245 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv211 * _menhir_state * 'tv_expression) * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_expression) * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state * 'tv_expression) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_word) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 4314 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv247 * _menhir_state))))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv252)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | DISTINCT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ERROR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | FALSE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | GETVARS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ID _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | ISVAR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | LSQUARE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | MAP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | NOT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | PREM ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | RULE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | UNIQUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv82)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expression = 
# 82 "parser.mly"
 ( TRUE )
# 4438 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv80)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expression = 
# 86 "parser.mly"
 ( TRUE )
# 4452 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv78)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv69 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RSQUARE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv65 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | COLON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv61 * _menhir_state)))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | CONCL ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | DISTINCT ->
                        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | ERROR ->
                        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | FALSE ->
                        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | GETVARS ->
                        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | ID _v ->
                        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
                    | IF ->
                        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | ISVAR ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | LPAREN ->
                        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | LSQUARE ->
                        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | MAP ->
                        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | MATCH ->
                        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | NOT ->
                        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | PREM ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | RULE ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | SKIP ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | TRUE ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | UNIQUE ->
                        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv62)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv63 * _menhir_state)))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)) : 'freshtv66)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv67 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)) : 'freshtv70)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv71 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)) : 'freshtv74)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LTsources ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv47 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 90 "parser.mly"
 ( APPEND(SELECT(PREM,PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P"), SELECT(PREM,PFORMULA("nstep", [PVAR "P" ; PVAR "L"]), ID "P")) )
# 4580 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv46)) : 'freshtv48)
        | LTtargets ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv51 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv49 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 92 "parser.mly"
 ( SELECT(PREM,PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P'") )
# 4596 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv50)) : 'freshtv52)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv53 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
    | AND | APPEND | COMMA | CONCL | DISTINCT | ELSE | EOF | EQUAL | ERROR | FALSE | GETVARS | ID _ | IF | IN | ISVAR | LPAREN | LSQUARE | MAP | MATCH | MUST | NOT | OR | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | SUBLIST | THEN | TRUE | UNIQUE | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expression = 
# 88 "parser.mly"
 ( PREM )
# 4614 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | DISTINCT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | ERROR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | FALSE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | GETVARS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | ID _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | ISVAR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | LSQUARE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | MAP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | NOT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | PREM ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | RULE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | UNIQUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv42)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DISTINCT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ERROR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FALSE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | GETVARS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ISVAR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LSQUARE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | MAP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | NOT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PREM ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | RULE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | UNIQUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | RSQUARE ->
        _menhir_reduce44 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | DISTINCT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ERROR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FALSE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | GETVARS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ID _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ISVAR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LSQUARE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | MAP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | NOT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | PREM ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | RULE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | UNIQUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (string)
# 4998 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFTOFSTEP ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOSTEP ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | AND | APPEND | COMMA | CONCL | DISTINCT | ELSE | EOF | EQUAL | ERROR | FALSE | GETVARS | ID _ | IF | IN | ISVAR | LPAREN | LSQUARE | MAP | MATCH | MUST | NOT | OR | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | SUBLIST | THEN | TRUE | UNIQUE | WITH ->
        _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCL ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | DISTINCT ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ERROR ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | FALSE ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | GETVARS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | IF ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ISVAR ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LSQUARE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | MAP ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | MATCH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NOT ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PREM ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | RULE ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SKIP ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TRUE ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | UNIQUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv30)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expression = 
# 84 "parser.mly"
 ( FALSE )
# 5086 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | STRING ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | COMMA ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | CONCL ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ID _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | IN ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MUST ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NOT ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | OR ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PREM ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | WITH ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | STRING ->
            _menhir_reduce42 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState51
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LTsource ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv9 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv7 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 96 "parser.mly"
 ( HEAD(SELECT(LIST [CONCL],PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P")) )
# 5208 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)) : 'freshtv10)
        | LTtarget ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv13 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv11 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 98 "parser.mly"
 ( HEAD(SELECT(LIST [CONCL],PFORMULA("step", [PVAR "P" ; PVAR "L" ; PVAR "P'"]), ID "P'")) )
# 5224 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
    | AND | APPEND | COMMA | CONCL | DISTINCT | ELSE | EOF | EQUAL | ERROR | FALSE | GETVARS | ID _ | IF | IN | ISVAR | LPAREN | LSQUARE | MAP | MATCH | MUST | NOT | OR | OTHERWISE | PREM | RPAREN | RSQUARE | RULE | SKIP | SUBLIST | THEN | TRUE | UNIQUE | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expression = 
# 94 "parser.mly"
 ( CONCL )
# 5242 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 62 "parser.mly"
      ((Language.e list))
# 5278 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        (_menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) _menhir_s : 'freshtv4)
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

and fileOne : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 59 "parser.mly"
      ((Language.e))
# 5336 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONCL ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | DISTINCT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | ERROR ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | FALSE ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GETVARS ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | ID _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | IF ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | ISVAR ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | LPAREN ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | LSQUARE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | MAP ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | MATCH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | NOT ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | PREM ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | RULE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | SKIP ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | TRUE ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | UNIQUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv2))

# 219 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
  


# 5390 "parser.ml"
