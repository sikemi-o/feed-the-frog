extends Control

onready var progress_bar: ProgressBar = $TextureProgress
export var score_target: = 300



# Called when the node enters the scene tree for the first time.
func _ready():
	progress_bar.max_value = score_target
	
	progress_bar.value = PlayerData.score


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#Add commentary!!!!
