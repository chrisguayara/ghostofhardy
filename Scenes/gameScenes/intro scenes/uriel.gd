extends Node2D

@onready var animation_player = $AnimationPlayer

@onready var timer = $"../Timer"

func _ready():
	timer.start()



func _on_animation_player_animation_finished(anim_name):
	if anim_name == "down":
		animation_player.play("idle")


func _on_timer_timeout():
	animation_player.play("down")
	
	
	
