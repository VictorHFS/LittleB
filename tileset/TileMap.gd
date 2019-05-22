extends TileMap

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	var mouse_position = get_viewport().get_mouse_position()
	var loc = world_to_map(mouse_position)
	var cell = get_cell(loc.x, loc.y)
	set_cell(loc.x, loc.y, 1)
