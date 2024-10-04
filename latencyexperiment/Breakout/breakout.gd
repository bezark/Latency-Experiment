extends Node3D
var oldFPS = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Engine.max_fps = 10
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Engine.max_fps > oldFPS:
		$Label.modulate = Color.GREEN #change the color of the fps label to green 
	elif Engine.max_fps < oldFPS:
		$Label.modulate = Color.RED #change the color to red
	$Label.text = str("FPS:",Engine.max_fps)
	if Engine.max_fps == 0: 
		get_tree().change_scene_to_file("res://gameOver.tscn")
	oldFPS = Engine.max_fps
