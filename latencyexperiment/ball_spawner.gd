extends Node3D
@export var number_of_marbles = 20
const BALL = preload("res://ball.tscn")


func _ready():
	for x in number_of_marbles:
		var new_ball = BALL.instantiate()
		new_ball.position.y = x*0.5
		new_ball.position.x = randf_range(-0.1, 0.1)
		add_child(new_ball)
		
