extends KinematicBody2D


var gravity: = 1000.0

var velocity: = Vector2.ZERO

#makes snowball fall 
func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta 
	move_and_slide(velocity)
	

