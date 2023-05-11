class_name Destroyer
extends Node

@export var sound : AudioStreamPlayer

func _input(event: InputEvent) -> void:
	if(event is InputEventKey and event.is_action_pressed("Die")):
		if(sound != null):
			sound.play()
			await(sound.finished)
		get_parent().queue_free()
		print("C mamo")
