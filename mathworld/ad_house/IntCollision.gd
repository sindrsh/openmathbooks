extends CollisionPolygon2D

onready var height = get_parent().size/2
onready	var width = height*get_parent().n

# Called when the node enters the scene tree for the first time.
func _ready():
	polygon = PoolVector2Array ([
		Vector2(-width,-height), 
		Vector2(width,-height),
		Vector2(width,height),
		Vector2(-width,height),
		Vector2(-width,-height)
		]
	)
