extends Node2D

var size = 32
var num_scene = load("res://ad_house/Number.tscn")
var selected = []
var points = 0
var counter = 0
var numboard_pos = Vector2(800,100)

# Called when the node enters the scene tree for the first time.
func _ready():
	assert($Counter.connect("timeout", self, "_on_timeout") == 0)
	assert($CurrentNumber.connect("pressed", self, "_on_pressed") == 0)
	
#	randomize()
	
	$CurrentNumber.rect_position = Vector2(800,200)
	$CurrentNumber.text = "Go!"
	
	var number2 = num_scene.instance()
	number2.get_node("Int").animation = "two"
	number2.n = 2
	number2.position = Vector2(900,100)

	var number3 = num_scene.instance()
	number3.get_node("Int").animation = "one"
	number3.position = Vector2(1000,50)
	
	var number1 = num_scene.instance()
	number1.get_node("Int").animation = "one"
	number1.position = Vector2(1100,100)
	add_child(number1)
	
	add_child(number2)
	add_child(number3)

func _on_timeout():
	counter += 1
#	var n = randi() % 9 + 1

func _on_pressed():
	if selected.size() == 2:
		var a
		var b
		if selected[0].position > selected[1].position:
			a = selected[1]
			b = selected[0]
		else:
			a = selected[0]
			b = selected[1]

		a.yspeed = 300
		b.yspeed = 300
		
		a.xtarget = $NumberLine.position.x + size*5
		b.xtarget = a.xtarget + a.n*size
		b.position.y = a.position.y
		
func _physics_process(_delta):
	if selected.size() > 2:
		selected.pop_front().selected = false
	if selected.size() == 2:
		if selected[0].hit and selected[1].hit:
			selected = []
			points += 1
			print(points)
		
