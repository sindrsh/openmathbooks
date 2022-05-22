extends Area2D

var intlist = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
var size = 32
var n = 1 setget n_set
var hit_frame = 1
var hovered = false
var selected = false
var appended = false
var hit = false
var yspeed = 30
var xspeed = 600
var xtarget = 0
var ylimit = 850
var node_to_follow
var finished = 0

func n_set(new_n):
	n = new_n
	$Int.animation = String(intlist[new_n-1])

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
	finished += 1
	if not selected:
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
			var difference = xtarget-position.x
			var direction = difference/abs(difference)
			if abs(difference) < xspeed*delta:
				position = Vector2(xtarget, position.y+yspeed*delta)
			else:
				position += Vector2(direction*xspeed,yspeed)*delta
		else:
			position.y += yspeed*delta
	else:
		if xtarget != 0:
			position.x = xtarget
		position.y += yspeed*delta
	
	if node_to_follow:
		if node_to_follow.position.y > position.y + yspeed*delta:
			yspeed = 600
		else:
			yspeed = node_to_follow.yspeed	
			position.y = node_to_follow.position.y
				

	if not selected and not hit:
		$Int.frame = 0
		appended = false
		
	if finished == 2:
		queue_free()
				
	

