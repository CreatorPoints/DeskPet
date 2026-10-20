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
	var pname = OS.get_processor_name()
	return pname

func getRAM() -> String:
	var mem: Dictionary = OS.get_memory_info()
	var rawMB: int = int(mem.get("physical", 0)) / 1048576
	var standard: Array[int] = [1024, 2048, 4096, 8192, 16384, 32768, 65536]
	var biosMB: int = rawMB
	for size in standard:
		if rawMB <= size and rawMB > (size - 768):
			biosMB = size
			break
	return "%d MB (DDRx)" % biosMB
