extends CollisionPolygon2D

onready var height = get_parent().size
onready	var width = height*get_parent().n

# Called when the node enters the scene tree for the first time.
func _ready():
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
