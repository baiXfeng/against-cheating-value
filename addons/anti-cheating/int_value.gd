extends ac_value
class_name ac_int

var _value: int
	
func _init(v: int = 0) -> void:
	_value = v
	
func value() -> int:
	return _value
	
