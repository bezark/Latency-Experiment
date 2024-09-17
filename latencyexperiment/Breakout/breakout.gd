extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Engine.max_fps = 10
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Engine.max_fps == 0: 
		get_tree().change_scene_to_file("res://gameOver.tscn")
	pass
