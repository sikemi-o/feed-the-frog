extends Button


func _get_configuration_warning() -> String:
	return "next scene path must be set for the button to work" if next_scene_path == "" else ""


func _on_button_up():
	get_tree().change_scene(next_scene_path)
	PlayerData.score = 0
	get_tree().paused = false



export(String, FILE) var next_scene_path: = ""





