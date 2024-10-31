extends Control

@onready var _test1 = $CenterContainer/VBoxContainer/Test1
@onready var _test2 = $CenterContainer/VBoxContainer/Test2

var _pool: ac_node = acGlobalPool

var _acvalue: int:	# anti-cheating int: Cannot easily search and modify from memory.
	set(v):
		_pool.set_value("namespace:value", ac_int.new(v))
	get:
		return _pool.get_value("namespace:value", ac_int.new(0)).value()
	
var _value: int # normal int: Can easily search and modify from memory.

func _ready() -> void:
	_pool.disturb = 10

func _on_test_1_on_add(sender: Variant) -> void:
	_acvalue += 120
	_test1.value = _acvalue

func _on_test_1_on_reduce(sender: Variant) -> void:
	_acvalue -= 50
	_test1.value = _acvalue

func _on_test_1_on_refresh(sender: Variant) -> void:
	_test1.value = _acvalue

func _on_test_2_on_add(sender: Variant) -> void:
	_value += 120
	_test2.value = _value

func _on_test_2_on_reduce(sender: Variant) -> void:
	_value -= 50
	_test2.value = _value

func _on_test_2_on_refresh(sender: Variant) -> void:
	_test2.value = _value
