extends CharacterBody2D

@export var main_character: Node2D
@onready var animation_player = $AnimationPlayer

func _ready():
	pass

func _physics_process(delta):
	var direction = main_character.global_position - global_position
	
	if abs(direction.x) > abs(direction.y):
		if direction.x > 0:
			animation_player.play("idle_right")
		else:
			animation_player.play("idle_left")
	else:
		if direction.y > 0:
			animation_player.play("idle_down")
		else:
			animation_player.play("idle_up")
