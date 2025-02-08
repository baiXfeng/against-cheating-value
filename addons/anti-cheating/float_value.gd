extends ACValue
class_name ACFloat

var _value: float
var _validator: ACValidator
	
func _init(v: float = 0) -> void:
	_value = v
	_validator = get_validator().with(v)
	
func value():
	if not _validator.check(_value):
		return _validator.source()
	return _value
	
# override
func _get_validator() -> ACValidator:
	return preload("float_validator.gd").new()
	
# override
func duplicate() -> ACValue:
	return ACFloat.new(_value)
	
