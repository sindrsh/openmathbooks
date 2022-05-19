extends CollisionPolygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var height = 16
	var width = height*1
	polygon = PoolVector2Array ([
		Vector2(0,0), 
		Vector2(width,0),
		Vector2(width,height),
		Vector2(0,height),
		Vector2(0,0)
		]
	)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
