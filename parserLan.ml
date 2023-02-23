
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VARX
    | VARTERM of (
# 6 "parserLan.mly"
       (string)
# 12 "parserLan.ml"
  )
    | VARLEX of (
# 5 "parserLan.mly"
       (string)
# 17 "parserLan.ml"
  )
    | VARBIGX
    | VALUEPRED
    | VALUECTX
    | TURNSTYLE
    | SUBTYPING
    | SUBSTBAR
    | STEP
    | RIGHTSQUARE
    | RIGHTPAR
    | PROVIDED
    | NOSTEP
    | MID
    | LEFTSQUARE
    | LEFTPAR
    | LABELEDSTEP
    | INT of (
# 7 "parserLan.mly"
       (int)
# 37 "parserLan.ml"
  )
    | GRAMMARASSIGN
    | GAMMA
    | EXPCTX
    | EOF
    | EMPTYCTX
    | DOT
    | DIRECTIVE
    | COMMA
    | COLON
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
  | MenhirState76
  | MenhirState71
  | MenhirState70
  | MenhirState69
  | MenhirState68
  | MenhirState65
  | MenhirState60
  | MenhirState57
  | MenhirState56
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState52
  | MenhirState51
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState47
  | MenhirState46
  | MenhirState44
  | MenhirState43
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState26
  | MenhirState25
  | MenhirState20
  | MenhirState19
  | MenhirState17
  | MenhirState16
  | MenhirState15
  | MenhirState14
  | MenhirState13
  | MenhirState11
  | MenhirState4
  | MenhirState0

# 1 "parserLan.mly"
  
  open Language

# 109 "parserLan.ml"

let rec _menhir_goto_separated_nonempty_list_AND_formula_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_AND_formula_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 126 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv324)) : 'freshtv326)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv329 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_AND_formula_) : 'tv_separated_nonempty_list_AND_formula_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 143 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_AND_formula__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_AND_formula__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv321 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv317 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv315 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (f : 'tv_formula)), _, (xs0 : 'tv_loption_separated_nonempty_list_AND_formula__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_rule = let premises =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 171 "parserLan.ml"
          
        in
        
# 78 "parserLan.mly"
    ( let unusedVar = ruleCounter := !ruleCounter + 1 in Rule("rule" ^ string_of_int (!ruleCounter),premises,f) )
# 177 "parserLan.ml"
         in
        _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)) : 'freshtv318)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_loption_separated_nonempty_list_AND_formula__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)

and _menhir_goto_rule : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_rule -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv313 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | GAMMA ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | LEFTPAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VALUEPRED ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | EOF ->
        _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState57
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv314)

and _menhir_goto_list_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv303 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _, (xs : 'tv_list_term_)) = _menhir_stack in
        let _v : 'tv_list_term_ = 
# 187 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 232 "parserLan.ml"
         in
        _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)) : 'freshtv304)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv311 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 240 "parserLan.ml"
        )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv307 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 250 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv305 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 257 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (opname : (
# 5 "parserLan.mly"
       (string)
# 262 "parserLan.ml"
            ))), _, (ts : 'tv_list_term_)) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_term = 
# 56 "parserLan.mly"
    ( Constr(opname, ts) )
# 269 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 279 "parserLan.ml"
            )) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | _ ->
        _menhir_fail ()

and _menhir_goto_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (f : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_rule = 
# 76 "parserLan.mly"
    ( let unusedVar = ruleCounter := !ruleCounter + 1 in Rule("rule" ^ string_of_int (!ruleCounter), [],f) )
# 307 "parserLan.ml"
             in
            _menhir_goto_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
        | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | GAMMA ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VALUEPRED ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState60 in
                ((let _v : 'tv_loption_separated_nonempty_list_AND_formula__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 339 "parserLan.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_AND_formula__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState65 | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv293 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | GAMMA ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VALUEPRED ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv294)
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_formula)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_AND_formula_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 392 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_AND_formula_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_MID_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_MID_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv273 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_term)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 422 "parserLan.ml"
         in
        _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | MenhirState4 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_MID_term_) : 'tv_separated_nonempty_list_MID_term_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 437 "parserLan.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_term -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LEFTPAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_goto_list_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_rule_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_rule)) = _menhir_stack in
        let _v : 'tv_list_rule_ = 
# 187 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 482 "parserLan.ml"
         in
        _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_rule_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((rules : 'tv_list_rule_) : 'tv_list_rule_) = _v in
        ((let (_menhir_stack, _menhir_s, (grammar : 'tv_list_grammarLine_)) = _menhir_stack in
        let _v : 'tv_language = 
# 52 "parserLan.mly"
    (   let unusedVar = ruleCounter := 0 in Language(grammar, rules) )
# 498 "parserLan.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_language) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (lan : 'tv_language)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 40 "parserLan.mly"
      (Language.language)
# 520 "parserLan.ml"
            ) = 
# 48 "parserLan.mly"
    ( lan )
# 524 "parserLan.ml"
             in
            _menhir_goto_fileLan _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_language) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)) : 'freshtv270)) : 'freshtv272)
    | _ ->
        _menhir_fail ()

and _menhir_goto_assumption : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_assumption -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv253 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv249 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv250)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * 'tv_assumption) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)

and _menhir_goto_grammarLine : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_grammarLine -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv247 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | EOF | EXPCTX | GAMMA | LEFTPAR | VALUECTX | VALUEPRED | VARBIGX | VARX ->
        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv248)

and _menhir_reduce19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_term_ = 
# 185 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 597 "parserLan.ml"
     in
    _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_term -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv177 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | AND | COLON | DOT | EOF | EXPCTX | GAMMA | LABELEDSTEP | LEFTPAR | MID | NOSTEP | PROVIDED | RIGHTPAR | RIGHTSQUARE | STEP | SUBSTBAR | TURNSTYLE | VALUECTX | VALUEPRED | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv175 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
# 64 "parserLan.mly"
    ( Abs(t) )
# 623 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv178)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv181 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
        | SUBSTBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv179 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState15 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15) : 'freshtv182)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv187 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | RIGHTSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv185 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState17 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv183 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_term = 
# 72 "parserLan.mly"
      ( Substitution(t1,t2,t3) )
# 689 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)) : 'freshtv186)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv188)
    | MenhirState20 | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | RIGHTPAR ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv190)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv193 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | AND | COLON | DOT | EOF | EXPCTX | GAMMA | LABELEDSTEP | LEFTPAR | MID | NOSTEP | PROVIDED | RIGHTPAR | RIGHTSQUARE | STEP | SUBSTBAR | TURNSTYLE | VALUECTX | VALUEPRED | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv191 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_term = 
# 66 "parserLan.mly"
   ( AbsType(t) )
# 740 "parserLan.ml"
             in
            _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv194)
    | MenhirState4 | MenhirState30 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | MID ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState29 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv196)
        | EOF | EXPCTX | GAMMA | LEFTPAR | VALUECTX | VALUEPRED | VARBIGX | VARTERM _ | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_term)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_MID_term_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 786 "parserLan.ml"
             in
            _menhir_goto_separated_nonempty_list_MID_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv200)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_formula = 
# 86 "parserLan.mly"
 ( Formula("value", [t]) )
# 809 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv204)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv207 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TURNSTYLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv205 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assumption = 
# 98 "parserLan.mly"
    ( Constr("gammaAddx", [t]) )
# 835 "parserLan.ml"
             in
            _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv208)
    | MenhirState65 | MenhirState60 | MenhirState57 | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABELEDSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState46 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv210)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NOSTEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState46 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv212)
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState46 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv216)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 84 "parserLan.mly"
    ( Formula("step", [t1 ; t2]) )
# 942 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv220)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState50 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState51 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState51
            | AND | DOT | PROVIDED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv221 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_formula = 
# 90 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2]) )
# 986 "parserLan.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState51) : 'freshtv224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv226)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv229 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv227 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 92 "parserLan.mly"
    ( Formula("nstep", [t1 ; t2 ; t3]) )
# 1014 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv230)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv233 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState54
        | STEP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv231 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState54 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv234)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv237 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv235 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)), _), _, (t3 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 88 "parserLan.mly"
    ( Formula("step", [t1 ; t2 ; t3]) )
# 1074 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv238)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv241 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState69 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv240)
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState69
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv242)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv245 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFTSQUARE ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | AND | DOT | PROVIDED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv243 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, (gammaTerm : 'tv_assumption)), _, (t1 : 'tv_term)), _), _, (t2 : 'tv_term)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_formula = 
# 82 "parserLan.mly"
    ( Formula("typeOf", [gammaTerm ; t1 ; t2]) )
# 1134 "parserLan.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv246)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_rule_ = 
# 185 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 1154 "parserLan.ml"
     in
    _menhir_goto_list_rule_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EXPCTX ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LEFTPAR ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | VALUECTX ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | VARBIGX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | VARTERM _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | VARX ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | VARBIGX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv157 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_assumption = 
# 100 "parserLan.mly"
 ( Constr("gammaAddX", []) )
# 1206 "parserLan.ml"
             in
            _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)) : 'freshtv160)
        | VARX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv165 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv161 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | LEFTPAR ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv162)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv163 * _menhir_state))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv167 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | TURNSTYLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_assumption = 
# 96 "parserLan.mly"
    ( LangVar "Gamma" )
# 1259 "parserLan.ml"
         in
        _menhir_goto_assumption _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)

and _menhir_goto_loption_separated_nonempty_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let _v : 'tv_option_separated_list_MID_term__ = let x =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 1287 "parserLan.ml"
          
        in
        
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 1293 "parserLan.ml"
         in
        _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)) : 'freshtv152)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1301 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1309 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_MID_term__) : 'tv_loption_separated_nonempty_list_MID_term__) = _v in
        ((let ((_menhir_stack, _menhir_s, (category : (
# 6 "parserLan.mly"
       (string)
# 1316 "parserLan.ml"
        ))), (metavar : 'tv_option_VARTERM_)) = _menhir_stack in
        let _3 = () in
        let _v : 'tv_grammarLine = let ts =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 1324 "parserLan.ml"
          
        in
        
# 104 "parserLan.mly"
 ( GrammarLine(category,metavar, Some ts) )
# 1330 "parserLan.ml"
         in
        _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_separated_list_MID_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_separated_list_MID_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv147 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1342 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_option_separated_list_MID_term__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv145 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1350 "parserLan.ml"
    )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((ts : 'tv_option_separated_list_MID_term__) : 'tv_option_separated_list_MID_term__) = _v in
    ((let (((_menhir_stack, _menhir_s, (category : (
# 6 "parserLan.mly"
       (string)
# 1357 "parserLan.ml"
    ))), (metavar : 'tv_option_VARTERM_)), _) = _menhir_stack in
    let _5 = () in
    let _4 = () in
    let _3 = () in
    let _v : 'tv_grammarLine = 
# 106 "parserLan.mly"
 ( if category = "C" then GrammarLine("Context",Some "C",ts) else GrammarLine(category,metavar,ts) )
# 1365 "parserLan.ml"
     in
    _menhir_goto_grammarLine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 58 "parserLan.mly"
    ( BoundVar )
# 1379 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
# 1386 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((var : (
# 6 "parserLan.mly"
       (string)
# 1396 "parserLan.ml"
    )) : (
# 6 "parserLan.mly"
       (string)
# 1400 "parserLan.ml"
    )) = _v in
    ((let _v : 'tv_term = 
# 62 "parserLan.mly"
    ( LangVar(var) )
# 1405 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 60 "parserLan.mly"
    ( BoundTypeVar )
# 1419 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 68 "parserLan.mly"
      ( LangVar "v" )
# 1433 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv138)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARBIGX ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv121 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv122)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv123 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)) : 'freshtv126)
    | VARLEX _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parserLan.mly"
       (string)
# 1484 "parserLan.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | RIGHTPAR ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv128)
    | VARX ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHTPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv129 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EXPCTX ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | LEFTPAR ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | VALUECTX ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | VARBIGX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | VARTERM _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | VARX ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv131 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_term = 
# 70 "parserLan.mly"
      ( LangVar "e" )
# 1561 "parserLan.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)

and _menhir_goto_list_grammarLine_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_grammarLine_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GAMMA ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | VALUEPRED ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EOF ->
            _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv114)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_grammarLine) * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_grammarLine)), _, (xs : 'tv_list_grammarLine_)) = _menhir_stack in
        let _v : 'tv_list_grammarLine_ = 
# 187 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 1606 "parserLan.ml"
         in
        _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_VARTERM_ : _menhir_env -> 'ttv_tail -> 'tv_option_VARTERM_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv111 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1619 "parserLan.ml"
    )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1629 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EMPTYCTX ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv103 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1639 "parserLan.ml"
            )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState4 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | MID ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv99 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1651 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | EXPCTX ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | LEFTPAR ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | VALUECTX ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | VARBIGX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | VARTERM _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
                | VARX ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
                | EOF | GAMMA | VALUEPRED ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = MenhirState28 in
                    ((let _v : 'tv_option_separated_list_MID_term__ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 1675 "parserLan.ml"
                     in
                    _menhir_goto_option_separated_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv100)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv101 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1689 "parserLan.ml"
                )) * 'tv_option_VARTERM_)) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)) : 'freshtv104)
        | EXPCTX ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | LEFTPAR ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VALUECTX ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VARBIGX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | VARTERM _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | VARX ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
        | EOF | GAMMA | VALUEPRED ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState4 in
            ((let _v : 'tv_loption_separated_nonempty_list_MID_term__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 1712 "parserLan.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_MID_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv106)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv108)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1726 "parserLan.ml"
        )) * 'tv_option_VARTERM_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * 'tv_grammarLine) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv21 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv23 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv25 * _menhir_state * 'tv_assumption)) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * 'tv_assumption)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_rule) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv35 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv37 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv43 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState51 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv45 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv57 * _menhir_state)))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_list_grammarLine_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv71 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1869 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv73 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv75 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state) * (
# 5 "parserLan.mly"
       (string)
# 1893 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_term) * _menhir_state) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_term) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv89 * _menhir_state))) * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 1932 "parserLan.ml"
        )) * 'tv_option_VARTERM_)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv96)

and _menhir_reduce15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_grammarLine_ = 
# 185 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 1946 "parserLan.ml"
     in
    _menhir_goto_list_grammarLine_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parserLan.mly"
       (string)
# 1953 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VARTERM _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parserLan.mly"
       (string)
# 1966 "parserLan.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        let ((x : (
# 6 "parserLan.mly"
       (string)
# 1974 "parserLan.ml"
        )) : (
# 6 "parserLan.mly"
       (string)
# 1978 "parserLan.ml"
        )) = _v in
        ((let _v : 'tv_option_VARTERM_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 1983 "parserLan.ml"
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv12)) : 'freshtv14)
    | GRAMMARASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_VARTERM_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 1992 "parserLan.ml"
         in
        _menhir_goto_option_VARTERM_ _menhir_env _menhir_stack _v) : 'freshtv16)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 6 "parserLan.mly"
       (string)
# 2002 "parserLan.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)

and _menhir_goto_fileLan : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 40 "parserLan.mly"
      (Language.language)
# 2010 "parserLan.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 40 "parserLan.mly"
      (Language.language)
# 2019 "parserLan.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 40 "parserLan.mly"
      (Language.language)
# 2027 "parserLan.ml"
    )) : (
# 40 "parserLan.mly"
      (Language.language)
# 2031 "parserLan.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv8)) : 'freshtv10)

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

and fileLan : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 40 "parserLan.mly"
      (Language.language)
# 2050 "parserLan.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 40 "parserLan.mly"
      (Language.language)
# 2080 "parserLan.ml"
        ) = 
# 46 "parserLan.mly"
    ( Language([], []) )
# 2084 "parserLan.ml"
         in
        _menhir_goto_fileLan _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | VARTERM _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | EXPCTX | GAMMA | LEFTPAR | VALUECTX | VALUEPRED | VARBIGX | VARX ->
        _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv6))

# 219 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
  


# 2100 "parserLan.ml"
