extends Node2D

@onready var ui = $UI
@onready var speech_manager = $UI/TopBar/Speech_Manager

func _ready():
	ui.visible = false


func showScreen():
	ui.visible = true
