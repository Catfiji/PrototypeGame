extends CharacterBody2D

var speed = 400  # speed in pixels/sec

func _physics_process(delta):
	look_at(get_global_mouse_position())
	var direction = Input.get_vector("move_left", "move_right", "move_forward", "move_backward")
	velocity = direction * speed
	
	move_and_slide()
