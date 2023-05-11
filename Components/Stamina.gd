class_name Stamina
extends Node

@onready var stamina : float = 100.0
@export var max_stamina : float

func drain_stamina(toDrain : float) -> void :
	stamina -= toDrain
	fix_stamina()
	
func recover_stamina(toRecover : float) -> void:
	stamina += toRecover
	fix_stamina()
func fix_stamina() -> void :
	if(stamina >= max_stamina):
		stamina = max_stamina
	
	elif(stamina <= 0):
		stamina = 0
