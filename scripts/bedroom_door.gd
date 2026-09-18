extends Node2D


@onready var interaction_area: interactionArea = $"/root/main/bedroomDoor/interactionArea"
@onready var door_collision = $"/root/main/bedroomDoor/bedroomDoorCollision"


var state = false


func _ready() -> void:
	interaction_area.interact = Callable(self, "_on_interact")


func _process(_delta: float) -> void:
	pass


func _on_interact():
	if state == false:
		print("opened")
		state = true
		door_collision.set_deferred("disabled", true)
	else:
		print("closed")
		state = false
		door_collision.set_deferred("disabled", false)
