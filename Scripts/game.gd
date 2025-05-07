extends Node2D

@onready var player_ref = $Player
@onready var DEBUG_X_POS = $DEBUG/MarginContainer/VBoxContainer/X_Position
@onready var DEBUG_Y_POS = $DEBUG/MarginContainer/VBoxContainer/Y_Position


func _process(delta: float) -> void:
	handle_DEBUG()

func handle_DEBUG():
	DEBUG_X_POS.text = str("Spieler X-Position: ", player_ref.global_position.x)
	DEBUG_Y_POS.text = str("Spieler Y-Position: ", player_ref.global_position.y)
