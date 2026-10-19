extends Node

func monitor(state: String):
	if state == "on":
		OS.execute("xset", ["dpms", "force", "on"])
	elif state == "off":
		OS.execute("xset", ["dpms", "force", "off"])

func lock() -> void:
	OS.execute("xfce4-screensaver-command", ["--lock"])
