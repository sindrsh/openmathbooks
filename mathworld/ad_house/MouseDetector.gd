extends CollisionPolygon2D

onready var height = get_parent().size
onready	var width = height*get_parent().n
var mouse_margin = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	polygon = PoolVector2Array ([
		Vector2(-mouse_margin,-mouse_margin), 
		Vector2(width+mouse_margin,0),
		Vector2(width+mouse_margin,height+mouse_margin),
		Vector2(0,height+mouse_margin),
		Vector2(-mouse_margin,-mouse_margin)
		]
	)
