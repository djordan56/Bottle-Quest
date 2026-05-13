extends Area2D

@onready var pickup_sound = $PickupSound

func _on_body_entered(body: Node2D) -> void:
	if body is PlayerController:
		GameManager.add_energy_cell()
		
		pickup_sound.play()
		
		hide()
		$CollisionShape2D.disabled = true
		
		await pickup_sound.finished
		queue_free()
