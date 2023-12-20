; ============================== LAYOUT VARIABLES ==============================
; Strings are turned into arrays
; Each element is separated by a single space, additional spaces are trimmed off and included to make lining up keys easier
; Maps are generated, and a utility function is used to link the arrays together
alphaKeys :=    StrSplit(trmSpc("*q *w *e *r *t *u *i *o *p *a *s *d *f *g *j *k *l *; *' *z *x *c *v *b *m *,"), ' ')
alphaLayout :=  StrSplit(trmSpc("w  l  y  p  k  z  x  o  u  c  r  s  t  b  f  n  e  i  a  j  v  d  g  q  m  h"), ' ')
alpha := Map()
generateMap(alpha, alphaKeys, alphaLayout)

symKeys :=    StrSplit(trmSpc("*q *w *e *r *t *u *i *o *p *a *s *d *f *g *j *k *l *; *' *z *x *c *v *b *m *,"), ' ')
symLayout :=  StrSplit(trmSpc("~ {!} ? /   —  «  \ `;  : {{} (  .  ,  & {+} ' `"  ) {}} €  $  = {#} ¿ ``  -"), ' ')
sym := Map()
generateMap(sym, symKeys, symLayout)

symSlKeys :=    StrSplit(trmSpc("*q *w *e *r *t *u *i *o *p *a        *s        *d        *f       *g *j *k        *l        *;        *'       *z *x *c       *v *b *m *,"), ' ')
symSlLayout :=  StrSplit(trmSpc("°  <  [ {^} –  »  @  ]  > {Numpad1} {Numpad2} {Numpad3} {Numpad4} |  % {Numpad7} {Numpad8} {Numpad9} {Numpad0} ¶  § {Numpad5} *  ¡  _ {Numpad6}"), ' ')
symSl := Map()
generateMap(symSl, symSlKeys, symSlLayout)


; ============================== FUNCTIONS ==============================
generateMap(emptyMap, keyArray, layoutArray){
    if(keyArray.Length != layoutArray.Length){
        MsgBox("The hotkeys and desired layouts(" layoutArray[1] ") do not match in length. The script will quit.")
        ExitApp
    }
    For key in keyArray{
        emptyMap.Set(key, layoutArray[A_index])
    }
}

trmSpc(str){
    str := RegExReplace(str, " +", " ")
    return str
}