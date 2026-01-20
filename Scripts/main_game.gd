extends Node2D

@onready var level_manager = $LevelManager
@onready var music_manager = $MusicManager

@onready var ui_manager = $UIManager
const player = preload("res://Chars/Player/player_hardy.tscn")

func _ready():
	load_initial_level()

func load_initial_level():
	level_manager.load_level("Overworld")
	

func change_level(next_level_path):
	level_manager.load_next(next_level_path)
	


func _on_level_manager_has_started():
	var playerScene = player.instantiate()
	add_child(playerScene)
	playerScene.position = Vector2(50.0, 50.0)
