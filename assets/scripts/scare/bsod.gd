extends Control

@onready var bsod = $"."
@onready var kpanic = $"../kernelPanic"
@onready var music = $"../AudioStreamPlayer"
@onready var bg = $"../blackBG"
@onready var progress = $percentage

func _ready() -> void:
	var os = specs.getOS()
	bsod.visible = false
	kpanic.visible = false
	bg.visible = true
	music.play()
	await get_tree().create_timer(6.82).timeout
	# overwrite os for local testing
	os = "windows"
	if os == "windows":
		bg.visible = false
		bsod.visible = true
		kpanic.visible = false
		await get_tree().create_timer(2.0).timeout
		windowsMode()
	elif os == "linux":
		bg.visible = false
		bsod.visible = false
		kpanic.visible = true
		plog.error()

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
