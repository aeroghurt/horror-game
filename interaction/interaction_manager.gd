extends Node2D


@onready var label: Label = $Label


const base_text = "[E] TO "

# Stores areas that are being detected by the player at the moment
var active_areas: Array
var can_interact: bool = true


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	if active_areas.size() > 0 && can_interact:
		active_areas.sort_custom(_sort_by_distance_to_player)
		# Takes the object area closest to the player and 
		# changes the label text to match up with the action
		label.text = base_text + active_areas[0].action_name.to_upper()
		label.global_position = active_areas[0].global_position
		label.global_position.y -= 36
		label.global_position.x -= label.size.x / 2
		label.show()
	else:
		label.hide()


# Once the player enters an interactable area, that area
# "registers" themselves, but once the player leaves, that
# area "unregisters" themselves
func register_area(area: interactionArea):
	active_areas.push_back(area)

# Check if the index exists in the array
# If it does, remove it
func unregister_area(area: interactionArea):
	var index = active_areas.find(area)
	if index != -1: 
		active_areas.remove_at(index)


# Callable function that takes 2 areas and compares them
# to see which one is closest to the player in case two
# areas are detected by the player at once
func _sort_by_distance_to_player(area1, area2):
	var player = get_tree().get_first_node_in_group("player")
	var area1_to_player = player.global_position.distance_to(area1.global_position)
	var area2_to_player = player.global_position.distance_to(area2.global_position)
	return area1_to_player < area2_to_player


func _input(event):
	if event.is_action_pressed("interact") && can_interact:
		if active_areas.size() > 0:
			can_interact = false
			label.hide()
			
			await active_areas[0].interact.call()
			await get_tree().create_timer(1.0).timeout
			can_interact = true


func reset():
	active_areas.clear()
	can_interact = true
