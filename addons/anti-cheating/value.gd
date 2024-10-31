extends RefCounted
class_name ac_value

func get_validator() -> ac_validator:
	return _get_validator()
	
# override
func value():
	return 0
	
# override
func duplicate() -> ac_value:
	return ac_value.new()
	
# override
func _get_validator() -> ac_validator:
	return ac_validator.new()
	
