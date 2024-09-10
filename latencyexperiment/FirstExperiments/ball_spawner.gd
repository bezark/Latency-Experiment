extends Node3D
@export var number_of_marbles = 0
const BALL = preload("res://ball.tscn")


func _process(delta: float) -> void:
	for x in Engine.get_frames_drawn():
		var new_ball = BALL.instantiate()
		#new_ball.position.y = Engine.get_frames_drawn()
		#new_ball.position.x = randf_range(-0.1, 0.1)
		add_child(new_ball)
		
