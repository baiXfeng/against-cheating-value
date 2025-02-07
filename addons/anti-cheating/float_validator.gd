extends ACValidator

var _s0: float = 0
var _s1: float = 0
var _1: float = 0
var _2: float = 0
var _3: int = 0

func with(value: float) -> ACValidator:
	_3 = Time.get_unix_time_from_system()
	_s1 = randf_range(1.5, 2)
	_s0 = value * -_s1
	_1 = int(value) + _3
	_2 = value - int(value)
	return self
	
func check(value: float) -> bool:
	return (_1 - _3) == int(value) and (value - int(value) - _2) * 10000 < 10 
	
func source():
	return _s0 / -_s1
	
