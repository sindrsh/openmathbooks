extends Node2D

var n = 2
var rect_size = 40
var rect_col = Color( 1, 0.55, 0, 1 )
var border_col = Color( 1, 1, 1, 1 )
var speed = 0
var start_y = 10
var borders = []


var border = PoolVector2Array ([
	Vector2(0,0), 
	Vector2(rect_size,0),
	Vector2(rect_size,rect_size),
	Vector2(0,rect_size),
	Vector2(0,0)
	]
	)


func _draw():
	

		
	draw_rect(Rect2(0, 0, n*rect_size, rect_size),rect_col)
	for i in range(n):
		var border = PoolVector2Array ([
			Vector2(i*rect_size,0), 
			Vector2((i+1)*rect_size,0),
			Vector2((i+1)*rect_size,rect_size),
			Vector2(0,rect_size),
			Vector2(0,0)
			]
			)
		draw_polyline ( border, border_col)
	
var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	position = Vector2(rng.randi_range(10, 200),start_y) 
	
func _process(delta):
	position = position+Vector2(0,speed)
	update()
