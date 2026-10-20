extends Node2D

@onready var procLab = $TabContainer/Main/right/proc
@onready var ramLab = $TabContainer/Main/right/ram

func _ready() -> void:
	procLab.text = specs.getCPU()
	ramLab.text = specs.getRAM()
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
