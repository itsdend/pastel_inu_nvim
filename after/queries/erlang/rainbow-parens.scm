(pp_define
  "(" @opening
  ")" @closing) @container

(type_alias
  "(" @opening
  ")" @closing) @container

(module_attribute
  "(" @opening
  ")" @closing) @container

(expr_args
  "(" @opening
  ")" @closing) @container

(tuple
  "{" @opening
  "}" @closing) @container

(record_expr
  "{" @opening
  "}" @closing) @container

(map_expr
  "{" @opening
  "}" @closing) @container

(list
  "[" @opening
  "]" @closing) @container

(export_attribute
  "(" @opening
  ")" @closing) @container

(export_attribute
  "[" @opening
  "]" @closing) @container


(record_decl
  "(" @opening
  ")" @closing) @container


