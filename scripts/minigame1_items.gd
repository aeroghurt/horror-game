extends Node

var random_num: int


func _ready() -> void:
	random_num = randi_range(0, 1)
	get_random_item(random_num)


func _process(_delta: float) -> void:
	pass


func get_random_item(item: int):
	var show = get_child(item)
	for i in self.get_children():
		i.visible = false
	show.visible = true


func _on_area_2d_body_entered(body: Node2D) -> void:
	Global.minigame1_score += 10
	queue_free()
