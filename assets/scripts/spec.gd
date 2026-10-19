extends Node2D

func getOS() -> String:
	var os = OS.get_name()
	if os == "Windows":
		return "windows"
	elif os == "Linux":
		return "linux"
	else:
		return "unsupported"

func getCPU() -> String:
	var name = OS.get_processor_name()
	var core = OS.get_processor_count()
	return str(name, " ", core, "Threads")

func getRAM() -> String:
	var mem = OS.get_memory_info()
	var totalGB = mem["physical"] / 1073741824.0
	return str(totalGB, "GB")
