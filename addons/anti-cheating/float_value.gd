extends ac_value
class_name ac_float

var _value: float
var _validator: ac_validator
	
func _init(v: float = 0) -> void:
	_value = v
	_validator = get_validator().with(v)
	
func value():
	if not _validator.check(_value):
		return _validator.source()
	return _value
	
# override
func _get_validator() -> ac_validator:
	return preload("float_validator.gd").new()
	
# override
func duplicate() -> ac_value:
	return ac_float.new(_value)
	
