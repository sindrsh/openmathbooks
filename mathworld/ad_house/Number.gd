extends Area2D

var size = 32
var n = 1
var test = "test"
var frame = 1
var selected = false
var appended = false



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	assert(connect("area_entered", self, "_on_area_entered") == 0)
	assert(connect("mouse_entered", self, "_on_mouse_entered") == 0)
	
func _on_area_entered(_area):
	$Int.frame = frame

func _on_mouse_entered():
	selected = true

func _process(delta):
	position = position+Vector2(0,100*delta)
	if Input.is_action_pressed("ui_select") and selected:
		$Int.frame = 2
		if not appended:
			get_parent().selected.append(self)
			appended = true
	if not selected:
		$Int.frame =1
		appended = false
