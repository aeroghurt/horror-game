extends Node

#@onready var item_1: Sprite2D = $Sprite2D
#@onready var item_2: Sprite2D = $Sprite2D2

var random_num: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	random_num = randi_range(0, 1)
	get_random_item(random_num)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func get_random_item(item: int):
	var show = get_child(item)
	for i in self.get_children():
		i.visible = false
	show.visible = true
