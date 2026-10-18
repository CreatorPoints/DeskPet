extends Control

@onready var bsod = $"."
@onready var kpanic = $"../kernelPanic"
@onready var music = $"../AudioStreamPlayer"
@onready var bg = $"../blackBG"

func _ready() -> void:
	var os = specs.getOS()
	bsod.visible = false
	kpanic.visible = false
	bg.visible = true
	music.play()
	await get_tree().create_timer(6.82).timeout
	if os == "windows":
		bg.visible = false
		bsod.visible = true
		kpanic.visible = false
	elif os == "linux":
		bg.visible = false
		bsod.visible = false
		kpanic.visible = true
