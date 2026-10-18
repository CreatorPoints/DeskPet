extends Node2D

func getOS() -> String:
	var os = OS.get_name()
	if os == "Windows":
		return "windows"
	elif os == "Linux":
		return "linux"
	else:
		return "unsupported"
