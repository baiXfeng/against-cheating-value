extends Node
class_name ac_pool

var _pool: Dictionary

func _init(parent: Node = null):
	if parent:
		parent.add_child(self)
	
func set_value(key: String, value: ac_value):
	_pool[key] = value
	
func get_value(key: String, default_value: ac_value = ac_value.new()) -> ac_value:
	if _pool.has(key):
		return _pool[key]
	return default_value
	
func has(key: String) -> bool:
	return _pool.has(key)
	
func keys() -> Array[String]:
	return _pool.keys()
	
func erase(key: String) -> bool:
	return _pool.erase(key)
	
func clear():
	_pool.clear()
	
func is_empty() -> bool:
	return _pool.is_empty()
	
