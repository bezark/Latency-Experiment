extends RigidBody3D


func _on_body_entered(body: Node) -> void:
	if body.is_in_group("ball"):
		queue_free()
