
extends Label

func _ready() -> void:
	# Keep every character the same width.
	add_theme_font_size_override("font_size", 28)
	add_theme_color_override("font_color", Color.WHITE)

	# Use a monospace font for proper ASCII alignment.
	add_theme_font_override(
		"font",
		SystemFont.new()
	)
	var mono_font := SystemFont.new()
	mono_font.font_names = PackedStringArray(["DejaVu Sans Mono", "Liberation Mono", "monospace"])
	add_theme_font_override("font", mono_font)

	horizontal_alignment = HORIZONTAL_ALIGNMENT_LEFT
	vertical_alignment = VERTICAL_ALIGNMENT_TOP

	text = """     .--.        _
    |o_o |      | |
    |:_/ |      | |
   //   \\ \\     |_|
  (|     | )     _
 /'\\_   _/`\\    (_)
 \\___)=(___/

KERNEL PANIC!

Please reboot your computer."""
