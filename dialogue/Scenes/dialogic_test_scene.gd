extends Node2D

func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	#Starts the dialogic timeline "timeline"
	#NOTE: Do not include extensions, or file location, it is JUST the name of the timeline
	Dialogic.start("timeline")

func _on_dialogic_signal(argument: String):
	if argument == "its a signal":
		print("A signal fired via dialogic!")
