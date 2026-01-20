extends Node2D

var curr_song = null

@onready var introtheme = $introtheme

func load_song(song: String):
	if song != "":
		if song == "introtheme":
			introtheme.play()
			print("Playing Intro Theme")
			curr_song = introtheme
		
		else:
			print("No song with name: " + song)
	else:
		print("Song path is empty!")

func unload_song():
	curr_song.stop()
