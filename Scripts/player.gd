extends CharacterBody2D

@export var max_speed : float = 200.0
@export var acceleration : float = 20.0
@export var friction : float = 20.0

func _physics_process(delta: float) -> void:
	
	var h_dir = Input.get_axis("ui_left", "ui_right")
	var v_dir = Input.get_axis("ui_up", "ui_down")
	
	var dir = Vector2(h_dir, v_dir)
	
	if dir == Vector2.ZERO:
		velocity = velocity.move_toward(Vector2.ZERO, friction * delta)
	else:
		velocity += dir * acceleration * delta
		velocity = velocity.limit_length(max_speed)
	
	move_and_slide()
