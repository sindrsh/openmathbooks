extends Sprite

var px
var elapsed_time = 0;
var road = [[1,0],[2,0],[3,0],[3,1]]
var speed = 1
var prev_pos = Vector2(0,0)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	px = get_parent().px
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if position.x < 2.5*px:
		position = position+Vector2(speed,0)
	elif position.y < 2.5*px:
		position = position+Vector2(0,speed)
	elif position.x < 6*px:
		position = position+Vector2(speed,0)
	if position == prev_pos:
		get_tree().change_scene("res://ad_house/AdGame1.tscn")
	prev_pos = position
#	pass
