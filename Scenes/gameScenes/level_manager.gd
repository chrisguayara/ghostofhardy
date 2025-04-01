extends Node2D

var curr_level = null
@onready var ui_manager = $"../UIManager"
@onready var music_manager = $"../MusicManager"
var level_name :String = ""
@onready var sound_fx_manager = $"../SoundFXManager"

signal has_Started

var levels : Dictionary[String, Dictionary] = {
	"title" : {
		"path" : "res://Scenes/gameScenes/title.tscn" ,
		"music" : "introtheme" 
	},
	"limbo" : {
		"path" : "res://Scenes/gameScenes/intro scenes/limbo_1.tscn" , 
		"music" : "res://Sound/Music/openingScene.wav" 
	} 
}

func _ready():
	pass


func _physics_process(_delta):
	if Input.is_action_just_pressed("escape"):
		get_tree().quit()
	if level_name== "title" && Input.is_action_just_pressed("enter"):
		print("entered")
		load_level("limbo")
		music_manager.unload_song()
		sound_fx_manager.on_enter()

func load_level(level: String):
	print("Loading level: ", level)
	if levels.has(level):  
		level_name = level
		print(level_name)
		var level_data = levels[level]
	
		if curr_level:
			curr_level.queue_free()
	
		var new_level = load(level_data["path"]).instantiate()
		add_child(new_level)
		curr_level = new_level
		music_manager.load_song(level_data["music"])
		
		if level_name == "limbo":
			emit_signal("has_Started")
	
	
