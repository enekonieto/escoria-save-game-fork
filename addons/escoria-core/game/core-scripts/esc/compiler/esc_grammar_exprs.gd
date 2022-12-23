class_name ESCGrammarExprs


class Logical extends ESCGrammarExpr:
	var _left: ESCGrammarExpr setget ,get_left
	var _operator: ESCToken
	var _right: ESCGrammarExpr setget ,get_right


	func init(left: ESCGrammarExpr, operator: ESCToken, right: ESCGrammarExpr):
		_left = left
		_operator = operator
		_right = right


	func get_left() -> ESCGrammarExpr:
		return _left


	func get_right() -> ESCGrammarExpr:
		return _right


	func get_operator() -> ESCToken:
		return _operator


	func accept(visitor):
		return visitor.visit_logical_expr(self)


class Binary extends ESCGrammarExpr:
	var _left: ESCGrammarExpr setget ,get_left
	var _operator: ESCToken
	var _right: ESCGrammarExpr setget ,get_right


	func init(left: ESCGrammarExpr, operator: ESCToken, right: ESCGrammarExpr):
		_left = left
		_operator = operator
		_right = right


	func get_left() -> ESCGrammarExpr:
		return _left


	func get_right() -> ESCGrammarExpr:
		return _right


	func get_operator() -> ESCToken:
		return _operator


	func accept(visitor):
		return visitor.visit_binary_expr(self)


class Unary extends ESCGrammarExpr:
	var _operator: ESCToken setget ,get_operator
	var _right: ESCGrammarExpr setget ,get_right


	func init(operator: ESCToken, right: ESCGrammarExpr):
		_operator = operator
		_right = right


	func get_right() -> ESCGrammarExpr:
		return _right


	func get_operator() -> ESCToken:
		return _operator


	func accept(visitor):
		return visitor.visit_unary_expr(self)


class Get extends ESCGrammarExpr:
	var _object: ESCGrammarExpr setget ,get_object
	var _name: ESCToken setget ,get_name


	func init(object: ESCGrammarExpr, name: ESCToken):
		_object = object
		_name = name


	func accept(visitor):
		return visitor.visit_get_expr(self)


	func get_object() -> ESCGrammarExpr:
		return _object


	func get_name() -> ESCToken:
		return _name


class Set extends ESCGrammarExpr:
	var _object: ESCGrammarExpr setget ,get_object
	var _name: ESCToken setget ,get_name
	var _value: ESCGrammarExpr setget ,get_value


	func init(object: ESCGrammarExpr, name: ESCToken, value: ESCGrammarExpr):
		_object = object
		_name = name
		_value = value


	func get_object() -> ESCGrammarExpr:
		return _object


	func get_name() -> ESCToken:
		return _name


	func get_value() -> ESCGrammarExpr:
		return _value


	func accept(visitor):
		return visitor.visit_set_expr(self)


class Call extends ESCGrammarExpr:
	var _callee: ESCGrammarExpr setget ,get_callee
	var _paren: ESCToken
	var _arguments: Array setget ,get_arguments


	func init(callee: ESCGrammarExpr, paren: ESCToken, arguments: Array):
		_callee = callee
		_paren = paren
		_arguments = arguments


	func get_callee() -> ESCGrammarExpr:
		return _callee


	func get_arguments() -> Array:
		return _arguments


	func accept(visitor):
		return visitor.visit_call_expr(self)


class Literal extends ESCGrammarExpr:
	var _value setget ,get_value


	func init(value):
		_value = value


	func get_value():
		return _value


	func accept(visitor):
		return visitor.visit_literal_expr(self)


class Variable extends ESCGrammarExpr:
	var _name: ESCToken


	func init(name: ESCToken):
		_name = name


	func accept(visitor):
		return visitor.visit_variable_expr(self)


	func get_name() -> ESCToken:
		return _name


class Assign extends ESCGrammarExpr:
	var _name: ESCToken setget ,get_name
	var _value: ESCGrammarExpr setget ,get_value


	func init(name: ESCToken, value: ESCGrammarExpr):
		_name = name
		_value = value


	func get_name() -> ESCToken:
		return _name


	func get_value() -> ESCGrammarExpr:
		return _value


	func accept(visitor):
		return visitor.visit_assign_expr(self)


class Grouping extends ESCGrammarExpr:
	var _expression: ESCGrammarExpr setget ,get_expression


	func init(expression: ESCGrammarExpr):
		_expression = expression


	func get_expression() -> ESCGrammarExpr:
		return _expression


	func accept(visitor):
		return visitor.visit_grouping_expr(self)