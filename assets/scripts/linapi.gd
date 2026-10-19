extends Node

var os = specs.getOS()
func monitor(state: String):
	if state == "on" and os == "linux":
		OS.execute("xset", ["dpms", "force", "on"])
	elif state == "off" and os == "linux":
		OS.execute("xset", ["dpms", "force", "off"])
