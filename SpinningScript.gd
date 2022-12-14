extends Control


func _physics_process(delta):
	rect_rotation = rect_rotation+10

func stop():
	set_physics_process(false)
	rect_rotation = 0
