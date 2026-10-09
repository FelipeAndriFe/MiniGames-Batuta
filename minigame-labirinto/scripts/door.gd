extends Node2D

var is_right_door = false
const DOOR_CLOSED = preload("uid://7w7wxlk1lkpp")
const DOOR_OPENED = preload("uid://cw7fpmornd00r")
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var audio: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var confirmation: Label = $confirmation


func _on_area_2d_mouse_entered() -> void:
	sprite_2d.texture = DOOR_OPENED
	if audio:
		audio.play()


func _on_area_2d_mouse_exited() -> void:
	sprite_2d.texture = DOOR_CLOSED
	confirmation.text = ""


func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if is_right_door:
			confirmation.text = "Correto!!!"
			confirmation.add_theme_color_override("font_color", Color.GREEN) 
		else:
			confirmation.text = "Errado..."
			confirmation.add_theme_color_override("font_color", Color.RED) 
