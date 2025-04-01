extends Node2D

var ENTER_FX = "res://Sound/enter_fx.tscn"

func on_enter():
	var sound = load(ENTER_FX).instantiate()
	add_child(sound)

func playSpeech(tone: String):
	pass
