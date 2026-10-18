extends Node2D

func getOS() -> String:
	match OS.get_name():
		"Windows":
			return "windows"
		"Linux":
			return "linux"
		_:
			return "unsupported"
func _ready() -> void:
	var os := getOS()
	if os == "windows":
		print("Running Windows")
		$kernelPanic.visible = false
		$BSOD.visible = true
	elif os == "linux":
		print("Running Linux")
		$BSOD.visible = false
		$kernelPanic.visible = true
