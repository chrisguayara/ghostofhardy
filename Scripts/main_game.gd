extends Node2D

@onready var level_manager = $LevelManager
@onready var hardy = $Hardy
@onready var edith = $Edith

func _ready():
	load_initial_level()

func load_initial_level():
	level_manager.load_level("res://Scenes/gameScenes/title.tscn")

func change_level(next_level_path):
	level_manager.load_next(next_level_path)
