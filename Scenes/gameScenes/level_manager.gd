extends Node2D

var curr_level = null

func _ready():
	pass
func _physics_process(delta):
	if Input.is_action_just_pressed("escape"):
		get_tree().quit()

func load_level(level: String):
	if curr_level:
		curr_level.queue_free()
	
	var new_level = load(level).instantiate()
	add_child(new_level)
	curr_level = new_level
	
	
