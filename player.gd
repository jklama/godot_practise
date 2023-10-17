extends CharacterBody2D

@export var Speed: int = 20
@onready var animations

func handleInput():
	var moveDirections = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity = moveDirections*Speed
	
func _physics_process(delta):
	handleInput()
	move_and_slide()
	
