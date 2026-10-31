extends CharacterBody2D


const SPEED = 500.0


func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
	
	var right = Input.is_action_pressed("right")
	var left = Input.is_action_pressed("left")
	var up = Input.is_action_pressed("up")
	var down = Input.is_action_pressed("down")
	
	if right:
		if up:
			$Player/PlayerAnimations.play("walk_right_up")
		elif down:
			$Player/PlayerAnimations.play("walk_right_down")
		else:
			$Player/PlayerAnimations.play("walk_right")
	elif left:
		if up:
			$Player/PlayerAnimations.play("walk_left_up")
		elif down:
			$Player/PlayerAnimations.play("walk_left_down")
		else:
			$Player/PlayerAnimations.play("walk_left")
	elif up:
		$Player/PlayerAnimations.play("walk_up")
	elif down:
		$Player/PlayerAnimations.play("walk_down")
