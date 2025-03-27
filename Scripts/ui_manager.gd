extends Node2D

@onready var ui = $UI

func _ready():
	ui.visible = false

func showScreen():
	ui.visible = true
