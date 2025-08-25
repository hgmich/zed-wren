(class_definition
  "foreign"? @context
  "class" @context
  name: (name) @name
  "is"? @context
  superclass_name: (name)? @context) @item

(static_method_definition
  "static" @context
  (method_definition
    (method_declaration
      (name) @name
      "("? @context
      (parameter_list)? @context
      ")"? @context))) @item

(foreign_method_declaration
  "foreign" @context
  "static"? @context
  (method_declaration
    (name) @name
    "("? @context
    (parameter_list)? @context
    ")"? @context)) @item

(class_body
  (method_definition
    (method_declaration
    (name) @name
    "("? @context
    (parameter_list)? @context
    ")"? @context)) @item)

(static_getter_definition
  "static" @context
  (getter_definition
    (getter_declaration
      (name) @name))) @item

(foreign_getter_declaration
  "foreign" @context
  "static"? @context
  (getter_declaration
    (name) @name)) @item

(class_body
  (getter_definition
    (getter_declaration
    (name) @name)) @item)

(static_setter_definition
  "static" @context
  (setter_definition
    (setter_declaration
      (name) @name
      "=" @name))) @item

(foreign_setter_declaration
  "foreign" @context
  "static"? @context
  (setter_declaration
    (name) @name
    "=" @name)) @item

(class_body
  (setter_definition
    (setter_declaration
      (name) @name
      "=" @name)) @item)

(source_file
  (variable_definition
    "var" @context
    [
      name: (name)
      name: (constant_name)
    ] @name) @item)

(prefix_operator_definition
  "static"? @context
  (operator) @name) @item

(infix_operator_definition
  "static"? @context
  (operator) @name
  "(" @context
  (parameter) @context
  ")" @context) @item

(subscript_operator_definition
  "static"? @context
  "[" @name
  (parameter_list) @name
  "]" @name) @item

(subscript_setter_definition
  "static"? @context
  "[" @name
  (parameter_list) @name
  "]" @name
  "=" @name
  "(" @context
  (parameter) @context
  ")" @context) @item

(foreign_prefix_operator_declaration
  "foreign" @context
  "static"? @context
  (operator) @name) @item

(foreign_infix_operator_declaration
  "foreign" @context
  "static"? @context
  (operator) @name
  "(" @context
  (parameter) @context
  ")" @context) @item

(foreign_subscript_operator_declaration
  "foreign" @context
  "static"? @context
  "[" @name
  (parameter_list) @name
  "]" @name) @item

(foreign_subscript_setter_declaration
  "foreign" @context
  "static"? @context
  "[" @name
  (parameter_list) @name
  "]" @name
  "=" @name
  "(" @context
  (parameter) @context
  ")" @context) @item
