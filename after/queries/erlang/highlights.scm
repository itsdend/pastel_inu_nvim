;; extends
(remote_module (atom) @module) @module
 (behaviour_attribute (atom) @module) 
(tuple (atom) @constant) 
(callback (atom) @function) @keyword.import.erlang
(function_clause
  name: (atom) @function.decl)
(spec fun: (atom) @module  ) @module
(spec sigs: (type_sig (atom) @constant) )
(pipe (atom) @constant)
(export_type_attribute (fa (atom) @type)) @keyword.import.erlang
(record_decl) @keyword.import.erlang
(type_alias) @keyword.import.erlang
ty: (atom) @constant
( map_field key: (atom) @constant)
( map_field value: (atom) @constant)
(list exprs: (atom) @constant )
(external_fun module: (module name: (atom) @module))
(export_attribute funs: (fa fun: (atom) @function.decl))
(opaque (type_name (atom) @keyword.type)) @keyword.import
module: (var) @module

