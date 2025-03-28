extends Control

@onready var canvas_layer = $CanvasLayer

func _ready():
	canvas_layer.visible = false

func _show():
	canvas_layer.visible = true
