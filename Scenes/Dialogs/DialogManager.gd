extends Control

onready var file_dialog = $FileDialog
onready var pictures = OS.get_system_dir(OS.SYSTEM_DIR_PICTURES)

func open_icon():
	file_dialog.current_dir = pictures
	file_dialog.filters = ["*.png; PNG Image Format"]
	file_dialog.mode = FileDialog.MODE_OPEN_FILE
	file_dialog.window_title = "Open Icon"
	file_dialog.popup_centered()
