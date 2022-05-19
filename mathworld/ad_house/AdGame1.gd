extends Node2D

var num_scene = load("res://ad_house/Number.tscn")
var selected = []
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var number1 = num_scene.instance()
	number1.get_node("Int").animation = "one"
	number1.position = Vector2(100,100)

	var number2 = num_scene.instance()
	number2.get_node("Int").animation = "two"
	number2.position = Vector2(200,100)

	var number3 = num_scene.instance()
	number3.get_node("Int").animation = "one"
	number3.position = Vector2(300,50)
	
	add_child(number1)
	add_child(number2)
	add_child(number3)

func _process(delta):
	if selected.size() > 2:
		selected.pop_front().selected = false
