extends Control


# Called when the node enters the scene tree for the first time.
func resume():
	get_tree().paused = false
	$PanelContainer.visible = false
	
func pause():
	get_tree().paused = true
	$PanelContainer.visible = true
	
func testescape():
	if Input.is_action_just_pressed("pause") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("pause") and get_tree().paused == true:
		resume()
	


func _on_resume_pressed():
	resume()


func _on_quit_pressed():
	get_tree().quit()
	
	
func _process(delta):
	testescape()
