extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer


export var score: = 100


func _on_body_entered(body: PhysicsBody2D) -> void:
	eaten()
	
#increases the player's score and makes the object "fade out"

func eaten() -> void:
	PlayerData.score += score	
	anim_player.play("bounce_and_fade")
	$AudioStreamPlayer.play()

