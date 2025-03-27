extends Node2D

@onready var level_manager = $LevelManager
@onready var music_manager = $MusicManager

@onready var ui_manager = $UIManager


func _ready():
	load_initial_level()

func load_initial_level():
	level_manager.load_level("title")
	

func change_level(next_level_path):
	level_manager.load_next(next_level_path)
	
