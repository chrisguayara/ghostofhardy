extends CharacterBody2D

@export var move_speed : float = 50
@onready var animation_player = $AnimationPlayer

var last_direction = "idle"

func _ready():
	animation_player.speed_scale = 2.0
func _physics_process(delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	print(input_direction)
	
	velocity = input_direction * move_speed
	
	if input_direction.x > 0:
		last_direction = "right"
	elif input_direction.x < 0:
		last_direction = "left"
	elif input_direction.y > 0:
		last_direction = "down"
	elif input_direction.y < 0:
		last_direction = "up"
	
	if input_direction != Vector2.ZERO:
		animation_player.play("move_" + last_direction) 
	else:
		animation_player.play("idle_" + last_direction)
	
	move_and_slide()
	
