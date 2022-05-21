extends Area2D

var size = 32
var n = 1
var hit_frame = 1
var hovered = false
var selected = false
var appended = false
var hit = false
var yspeed = 100
var xspeed = 200
var xtarget = 0
var ylimit = 700

# Called when the node enters the scene tree for the first time.
func _ready():
	assert(connect("area_entered", self, "_on_area_entered") == 0)
	assert(connect("mouse_entered", self, "_on_mouse_entered") == 0)
	assert(connect("mouse_exited", self, "_on_mouse_exited") == 0)
	assert(connect("area_exited", self, "_on_area_exited") == 0)
	
func _on_area_entered(_area):
	$Int.frame = hit_frame
	hit = true

func _on_mouse_entered():
	hovered = true

func _on_mouse_exited():
	hovered = false
	
func _on_area_exited(_area):
	queue_free()	
	
func _unhandled_input(event):
	if event is InputEventMouseButton:
		if not selected and event.pressed and hovered:
			$Int.frame = 2
			selected = true
			get_parent().selected.append(self)

func _physics_process(delta):
	
	if position.y < ylimit:
		if position.x != xtarget and xtarget != 0: 
			var direction = (xtarget-position.x)/abs(position.x-xtarget)
			position += Vector2(direction*xspeed,yspeed)*delta
		else:
			position += Vector2(0,yspeed)*delta
	else:
		if xtarget != 0:
			position.x = xtarget
		position += Vector2(0,yspeed)*delta

	if not selected and not hit:
		$Int.frame = 0
		appended = false
