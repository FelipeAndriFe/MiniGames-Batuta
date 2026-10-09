extends Node2D
@onready var door1: Node2D = $door1


func _ready() -> void:
	door1.is_right_door = true
