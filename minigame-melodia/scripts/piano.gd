extends Sprite2D
@onready var label: Label = $selected
@onready var game: Node = $".."
@onready var c_sound: AudioStreamPlayer = $C/C_sound
@onready var d_sound: AudioStreamPlayer = $D/D_sound
@onready var e_sound: AudioStreamPlayer = $E/E_sound
@onready var f_sound: AudioStreamPlayer = $F/F_sound
@onready var g_sound: AudioStreamPlayer = $G/G_sound
@onready var a_sound: AudioStreamPlayer = $A/A_sound
@onready var b_sound: AudioStreamPlayer = $B/B_sound


func _on_c_pressed() -> void:
	label.text = "Nota selecionada: C"
	game.answer = 'c'
	c_sound.play()

func _on_d_pressed() -> void:
	label.text = "Nota selecionada: D"
	game.answer = 'd'
	d_sound.play()

func _on_e_pressed() -> void:
	label.text = "Nota selecionada: E"
	game.answer = 'e'
	e_sound.play()

func _on_f_pressed() -> void:
	label.text = "Nota selecionada: F"
	game.answer = 'f'
	f_sound.play()

func _on_g_pressed() -> void:
	label.text = "Nota selecionada: G"
	game.answer = 'g'
	g_sound.play()

func _on_a_pressed() -> void:
	label.text = "Nota selecionada: A"
	game.answer = 'a'
	a_sound.play()

func _on_b_pressed() -> void:
	label.text = "Nota selecionada: B"
	game.answer = 'b'
	b_sound.play()
