extends ac_value
class_name ac_int

var _value: int
var _validator: ac_validator
	
func _init(v: int = 0) -> void:
	_value = v
	_validator = get_validator().with(v)
	
func value() -> int:
	if not _validator.check(_value):
		return _validator.source()
	return _value
	
# override
func _get_validator() -> ac_validator:
	return preload("int_validator.gd").new()
	
