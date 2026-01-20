extends Control

@onready var canvas_layer = $CanvasLayer
@onready var label = $CanvasLayer/MarginContainer/MarginContainer/HBoxContainer/Label2
@onready var sound_fx_manager = $"../../../../SoundFXManager"

var char_tones ={
	"uriel" : preload("res://Sound/FX/urielSound.wav"),
	"default" : preload("res://Sound/FX/enter.wav")
}

func _ready():
	canvas_layer.visible = false
	label.text = ""

func _show():
	canvas_layer.visible = true

func writeOut(textIns: String, tone: String):
	if textIns !="":
		label.text = ""
		for i in range(len(textIns)):
			label.text += textIns[i]
			sound_fx_manager.playSpeech(tone)
		
