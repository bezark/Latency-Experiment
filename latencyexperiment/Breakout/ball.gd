extends RigidBody3D



func _on_body_entered(body: Node) -> void:

	if body.is_in_group("player"):
		$"../EngineControls".randomize_sliders() # Very Chaotic
		#$"../EngineControls".random_walk_sliders() # less Chaotic
