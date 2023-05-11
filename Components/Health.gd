class_name Health
extends Node

@export var health : float = 100.0


func death() -> void:
	if(health <= 0):
		get_parent().queue_free()

func heal(toHeal : float) -> void:
	if(health < 100):
		health += toHeal
	fix_health()

func damage(toDamage : float) -> void:
	health -= toDamage
	fix_health()
		
func fix_health() -> void :
	if(health >= 100):
		health = 100
		
	elif(health <= 0):
		health = 0

