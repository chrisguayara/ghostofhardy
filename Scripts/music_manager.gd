extends Node2D

var curr_song = null



@onready var songDict = {
	"introtheme" : $introtheme,
	"winterstorm" : $winterstorm
}

func load_song(song: String):
	if song != "":
		if curr_song:
			curr_song = null
		if songDict.has(song):
			curr_song = songDict[song]
			curr_song.play()
		
		else:
			print("No song with name: " + song)
	else:
		print("Song path is empty!")

func unload_song():
	curr_song.stop()
