extends Sprite2D


var speed = 200  # Adjust the speed as needed

func _process(delta):
	var motion = Vector2(0, 0)

	if Input.is_action_pressed("move_left"):
		motion.x -= 1
	if Input.is_action_pressed("move_right"):
		motion.x += 1
	if Input.is_action_pressed("move_up"):
		motion.y -= 1
	if Input.is_action_pressed("move_down"):
		motion.y += 1

	if motion != Vector2(0, 0):
		motion = motion.normalized() * speed * delta
		position += motion
		rotation = motion.angle() - deg_to_rad(90) # Set the sprite's rotation based on the motion direction
