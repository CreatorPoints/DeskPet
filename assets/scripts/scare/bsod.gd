extends Control

@onready var bsod = $"."
@onready var panicBg = $"../kernelPanic/bg"
@onready var music = $"../AudioStreamPlayer"
@onready var bg = $"../blackBG"
@onready var progress = $percentage

func _ready() -> void:
	var os = specs.getOS()
	bsod.visible = false
	panicBg.visible = false
	bg.visible = true
	music.play()
	await get_tree().create_timer(6.82).timeout
	if os == "windows":
		bsod.visible = true
		panicBg.visible = false
		bg.visible = false
		await get_tree().create_timer(2.0).timeout
		windowsMode()
	elif os == "linux":
		bsod.visible = false
		panicBg.visible = false
		bg.visible = false
		plog.error()
		await get_tree().create_timer(2.0).timeout
		linapi.monitor("off")
		await get_tree().create_timer(0.5).timeout
		linapi.monitor("on")
		get_tree().change_scene_to_file("res://assets/scenes/BIOS.tscn")
		linapi.lock()
		

func windowsMode() -> void:
	progress.text = "40% Complete"
	await get_tree().create_timer(1.0).timeout
	progress.text = "55% Complete"
	await get_tree().create_timer(2.3).timeout
	progress.text = "61% Complete"
	await get_tree().create_timer(1.3).timeout
	progress.text = "WAKE UP!"
	await get_tree().create_timer(0.3).timeout
	progress.text = "82% Complete"
