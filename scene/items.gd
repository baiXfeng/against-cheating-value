@tool
extends HBoxContainer

@onready var _title = $Title
@onready var _value = $Value

@export var title: String:
	set(v):
		title = v
		if _title:
			_title.text = title

@export var value: int:
	set(v):
		value = v
		if _value:
			_value.text = "%d" % value

signal on_add(sender)
signal on_reduce(sender)
signal on_refresh(sender)

func _ready() -> void:
	title = title
	value = value
	
func _on_add_pressed() -> void:
	on_add.emit(self)

func _on_reduce_pressed() -> void:
	on_reduce.emit(self)

func _on_refresh_pressed() -> void:
	on_refresh.emit(self)
