extends Actor

export var score: = 100

	
func _ready() -> void:
	set_physics_process(false)
	_velocity.x = -speed.x
	
#sets velocity
func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1.0
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	
#"kills" enemy if player jumps on it
func _on_StompArea2D_area_entered(area: Area2D) -> void:
	
		if area.global_position.y > $StompArea2D.global_position.y:
			return
		die()
	
#increases player's score when enemy "dies"
func die() -> void:
	PlayerData.score += score
	queue_free()



