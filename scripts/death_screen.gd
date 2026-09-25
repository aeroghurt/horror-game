extends Node2D


func _ready() -> void:
	pass # Replace with function body.


func _process(_delta: float) -> void:
	pass


func _on_retry_btn_pressed() -> void:
	interactionManager.reset()
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_quit_btn_pressed() -> void:
	get_tree().quit()
