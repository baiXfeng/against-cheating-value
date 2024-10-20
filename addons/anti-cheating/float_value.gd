extends ac_value
class_name ac_float

var _value: float

func _init(v: float = 0.0) -> void:
	_value = v

func value() -> float:
	return _value
	
