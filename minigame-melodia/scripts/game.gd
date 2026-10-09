extends Node

@onready var sheet: Node2D = $sheet
@onready var label_correct: Label = $label_correct

var answer = '-'

func _on_button_pressed() -> void:
	if answer == 'b':
		label_correct.add_theme_color_override("font_color", Color.GREEN)
		label_correct.text = "Correto!!!"
	else:
		label_correct.add_theme_color_override("font_color", Color.RED)
		label_correct.text = "Errado..."


func _on_play_pressed() -> void:
	sheet.get_node("AnimationPlayer").play("play melody")
