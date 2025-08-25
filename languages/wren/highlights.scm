(constant_name) @constant

(class_name) @type

(name) @variable

(parameter) @variable.parameter

[
    (string)
    (raw_string)
] @string
(number) @number
(boolean) @boolean

[
    "var"
] @keyword

[
  "if"
  "else"
] @keyword.conditional

(import_statement
  "import" @keyword.import
  "for"? @keyword.import
  (name)? @type
  (rename
    (name) @type
  	"as" @keyword.import)?)

[
  "for"
  "while"
  ; "break"
  ; "continue"
] @keyword.repeat

[
  "class"
] @keyword.type

[
  "foreign"
  "static"
  "construct"
] @keyword.modifier

[
    (null)
] @type.builtin

[
  "Bool"
  "Class"
  "Fiber"
  "Fn"
  "List"
  "Map"
  "Null"
  "Num"
  "Object"
  "Range"
  "Sequence"
  "String"
  "System"
] @type.builtin

"return" @keyword.return

(operator) @operator

(call_expression
    function: (name) @function)

(call_expression
    (index_expression
    	index: (name) @function))

(index_expression
	index: (name) @property)

(method_declaration
    (name) @function.method)

(class_definition
  name: (name) @type
  "is"? @keyword
  superclass_name: (name)? @type)

(comment) @comment

(field) @variable
(static_field) @variable.static
(setter_declaration ((name) "=" @operator) @function.method)

[
  "="
  ".."
  "..."
] @operator

[
  (attribute)
  (runtime_attribute)
] (name) @attribute

[
  (attribute)
  (runtime_attribute)
] (attribute_value (name) @attribute)

(getter_declaration (name) @property)

(subscript_operator_definition
	"[" @operator
    "]" @operator)

(subscript_setter_definition
	"[" @operator
    "]" @operator)
