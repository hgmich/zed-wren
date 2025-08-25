(comment)+ @comment.around

(constructor
  (method_definition
    body: (_
      "{"
      (_)* @function.inside
      "}"))) @function.around

(static_method_definition
  (method_definition
    body: (_
      "{"
      (_)* @function.inside
      "}"))) @function.around

(class_body
  (method_definition
    body: (_
      "{"
      (_)* @function.inside
      "}")) @function.around)


(static_getter_definition
  (getter_definition
    body: (_
      "{"
      (_)* @function.inside
      "}"))) @function.around

(getter_definition
    body: (_
      "{"
      (_)* @function.inside
      "}")) @function.around

(static_setter_definition
  (setter_definition
    body: (_
      "{"
      (_)* @function.inside
      "}"))) @function.around

(setter_definition
    body: (_
      "{"
      (_)* @function.inside
      "}")) @function.around

(prefix_operator_definition
  body: (_
    "{"
    (_)* @function.inside
    "}")) @function.around

(infix_operator_definition
  body: (_
    "{"
    (_)* @function.inside
    "}")) @function.around

(subscript_operator_definition
  body: (_
    "{"
    (_)* @function.inside
    "}")) @function.around

(subscript_setter_definition
  body: (_
    "{"
    (_)* @function.inside
    "}")) @function.around

; match function.around foreign methods which have no body
(foreign_method_declaration) @function.around
(foreign_getter_declaration) @function.around
(foreign_setter_declaration) @function.around
(foreign_subscript_operator_declaration) @function.around
(foreign_subscript_setter_declaration) @function.around
(foreign_infix_operator_declaration) @function.around
(foreign_prefix_operator_declaration) @function.around

(class_definition
  "class"
  (class_body
    "{"
    (_)* @class.inside
    "}")) @class.around
