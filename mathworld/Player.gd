extends Sprite

var px
var elapsed_time = 0;
var road = [[1,0],[2,0],[3,0],[3,1]]
var speed = 1

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
#	pass
