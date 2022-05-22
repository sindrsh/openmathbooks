extends Node2D

var size = 16 	#Note: A square has sides of length 2*size  
var num_scene = load("res://ad_house/Number.tscn")
var selected = []
var points = 0
var counter = 0
var ystart = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	assert($Counter.connect("timeout", self, "_on_timeout") == 0)
	assert($CurrentNumber.connect("pressed", self, "_on_pressed") == 0)
	
#	randomize()
	
	$CurrentNumber.rect_position = Vector2(1200,200)
	$CurrentNumber.text = "Go!"

func _on_timeout():
	counter += 1
	
	var number1 = num_scene.instance()
	number1.n = randi() % 9 + 1
	number1.position = Vector2(550,ystart)
	
	var number2 = num_scene.instance()
	number2.n = randi() % 9 + 1
	number2.position = Vector2(900,ystart)

	var number3 = num_scene.instance()
	number3.n = randi() % 9 + 1
	number3.position = Vector2(1450,ystart)
	
	add_child(number1)
	add_child(number2)
	add_child(number3)	

	
#	var n = randi() % 9 + 1

func _on_pressed():
	if selected.size() == 2:
		var a
		var b
		if selected[0].position.x > selected[1].position.x:
			a = selected[1]
			b = selected[0]
		else:
			a = selected[0]
			b = selected[1]

		a.yspeed = 200
		b.yspeed = 200
		
		a.xtarget = $NumberLine.position.x - size*10+ a.n*size
		b.xtarget = a.xtarget + a.n*size + b.n*size
		
		if a.position.y != b.position.y:
			if a.position.y > b.position.y:
				b.node_to_follow = a
			else: 
				a.node_to_follow = b
		
func _physics_process(_delta):
	if selected.size() > 2:
		selected.pop_front().selected = false
	if selected.size() == 2:
		if selected[0].hit and selected[1].hit:
			if selected[0].n + selected[1].n == 10:
				selected[0].get_node("Int").frame = 3
				selected[1].get_node("Int").frame = 3
				points += 1
				$Score.text = String(points)
			selected[0].finished += 1
			selected[1].finished += 1
			selected = []

			

			
		
