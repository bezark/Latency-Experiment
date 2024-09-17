extends RigidBody3D



func _on_body_entered(body: Node) -> void:
#increment frames per second based on number of collisions
	if body.is_in_group("goodBricks"):
		Engine.max_fps += 2
		print(Engine.max_fps) 
	elif body.is_in_group("badBricks"):
		Engine.max_fps -= 2
		print(Engine.max_fps)
		#$"../EngineControls".randomize_sliders() # Very Chaotic
		#$"../EngineControls".random_walk_sliders() # less Chaotic
