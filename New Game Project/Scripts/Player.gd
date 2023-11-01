extends Node2D

# Declare variables
var speed = 200

func _process(delta):
	# Handle input for movement
	var motion = Vector2()
	if Input.is_action_pressed("ui_right"):
		motion.x += 1
	if Input.is_action_pressed("ui_left"):
		motion.x -= 1
	if Input.is_action_pressed("ui_down"):
		motion.y += 1
	if Input.is_action_pressed("ui_up"):
		motion.y -= 1

	# Normalize motion if moving diagonally to maintain consistent speedawd
	if motion.length() > 1:
		motion = motion.normalized()

	# Move the sprite
	position += motion * speed * delta
