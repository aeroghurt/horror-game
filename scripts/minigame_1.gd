extends Node2D

@onready var tileMapLayer: TileMapLayer = $TileMapLayer

const ROWS: int = 49
const COLUMNS: int = 49
const WALL: Vector2i = Vector2i(0,0)
const PATH: Vector2i = Vector2i(1,0)

var maze: Array = []

func _ready() -> void:
	generate_maze()


func _process(_delta: float) -> void:
	pass


func reset_maze():
	maze = []
	for r in range(ROWS):
		var row = []
		for c in range(COLUMNS):
			row.append(1)
		maze.append(row)
 

func generate_maze():
	reset_maze()
	
	var start_row = 1
	var start_col = 1
	maze[start_row][start_col] = 0
	
	carve_passage(start_row, start_col)
	draw_maze()


func carve_passage(row, col):
	var directions = [
		[-2, 0], # Up
		[0, 2], # Right
		[2, 0], # Down
		[0, -2] # Left
	]
	
	# Choose a random direction
	directions.shuffle()
	
	for dir in directions:
		var dr = dir[0]
		var dc = dir[1]
		
		var new_row = row + dr  
		var new_col = col + dc
		
		# Condition to check whether the tile has been explored (0 means it has
		# already been), and if the row/column numbers stay within the specified
		# range.
		if new_row >= 0 and new_row < ROWS and new_col >= 0 and new_col < COLUMNS:
			if maze[new_row][new_col] == 1:
				maze[new_row][new_col] = 0
				maze[row + dr / 2][col + dc / 2] = 0
			
				carve_passage(new_row, new_col)

func draw_maze():
	tileMapLayer.clear()
	
	for r in range(ROWS):
		for c in range(COLUMNS):
			var tile_type = WALL if maze[r][c] == 1 else PATH
			tileMapLayer.set_cell(Vector2i(c, r), 0, tile_type)


func _on_button_pressed() -> void:
	generate_maze()
