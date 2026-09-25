extends Area2D
class_name interactionArea

@export var action_name: String = "interact"

var interact: Callable = func():
	pass


func _ready() -> void:
	pass # Replace with function body.


func _process_(_delta: float) -> void:
	pass


func _on_body_entered(_body: Node2D) -> void:
	interactionManager.register_area(self)


func _on_body_exited(_body: Node2D) -> void:
	interactionManager.unregister_area(self)
