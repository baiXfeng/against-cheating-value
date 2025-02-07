extends RefCounted
class_name ACValue

func get_validator() -> ACValidator:
	return _get_validator()
	
# override
func value():
	return 0
	
# override
func duplicate() -> ACValue:
	return ACValue.new()
	
# override
func _get_validator() -> ACValidator:
	return ACValidator.new()
	
