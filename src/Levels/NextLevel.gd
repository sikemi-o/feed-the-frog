extends Node


onready var anim_player: AnimationPlayer = $AnimationPlayer


export var target_score: = 100
export var next_scene: PackedScene

func _get_configuration_warning() -> String:
	return "The property Next Level can't be empty" if not next_scene else ""


#checks if the player's score is above the score target
func _process(delta):
	if PlayerData.score > target_score:
		teleport()

#plays fade in animation and takes player to next level
func teleport() -> void:
	
	anim_player.play("fade_in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_scene)
