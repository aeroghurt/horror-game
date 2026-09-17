extends Node2D


@onready var player = get_tree().get_first_node_in_group("player")
@onready var label: Label = $Label


const base_text = "[E] TO"


var active_areas = []
var can_interact = true


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if active_areas.size() > 0 && can_interact:
		pass


# Once the player enters an interactable area, that area
# "registers" themselves, but once the player leaves, that
# area "unregisters" themselves"
func register_area(area: interactionArea):
	active_areas.push_back(area)

# Check if the index exists in the array
# If it does, remove it
func unregister_area(area: interactionArea):
	var index = active_areas.find(area)
	if index != -1: 
		active_areas.remove_at(index)
