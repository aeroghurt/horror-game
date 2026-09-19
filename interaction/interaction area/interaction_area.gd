extends Area2D
class_name interactionArea

@export var action_name: String = "interact"

var interact: Callable = func():
	pass


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process_(delta: float) -> void:
	pass


func _on_body_entered(_body: Node2D) -> void:
	interactionManager.register_area(self)


func _on_body_exited(_body: Node2D) -> void:
	interactionManager.unregister_area(self)
