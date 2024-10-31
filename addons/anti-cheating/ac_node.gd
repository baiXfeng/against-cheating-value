extends Node
class_name ac_node

# The number of times interference data is generated; the higher the value, the lower the performance, but the better the effect.
var disturb: int = 0:
	set(v):
		_dict.disturb = v
	get:
		return _dict.disturb

var _dict: ac_dict = ac_dict.new()

func _init(parent: Node = null):
	if parent:
		parent.add_child(self)
	
func set_value(key: String, value: ac_value):
	_dict.set_value(key, value)
	
func get_value(key: String, default_value: ac_value = ac_value.new()) -> ac_value:
	return _dict.get_value(key, default_value)
	
func has(key: String) -> bool:
	return _dict.has(key)
	
func keys() -> Array[String]:
	return _dict.keys()
	
func erase(key: String) -> bool:
	return _dict.erase(key)
	
func clear():
	_dict.clear()
	
func is_empty() -> bool:
	return _dict.is_empty()
	
