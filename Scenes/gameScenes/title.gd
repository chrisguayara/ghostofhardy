extends Node2D
@onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.speed_scale = 4.0



func _on_animation_player_animation_finished(anim_name):
	animation_player.speed_scale = 0.5
	animation_player.play("loop")
	
