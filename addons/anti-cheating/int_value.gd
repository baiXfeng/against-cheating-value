extends ACValue
class_name ACInt

var _value: int
var _validator: ACValidator
	
func _init(v: int = 0) -> void:
	_value = v
	_validator = get_validator().with(v)
	
func value() -> int:
	if not _validator.check(_value):
		return _validator.source()
	return _value
	
# override
func _get_validator() -> ACValidator:
	return preload("int_validator.gd").new()
	
# override
func duplicate() -> ACValue:
	return ACInt.new(_value)
	
