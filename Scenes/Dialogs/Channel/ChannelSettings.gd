extends ConfirmationDialog

signal open_icon()
signal add_channel()

onready var dialog_manager = get_parent()

onready var icon = $VBoxContainer/Options/Inputs/IconInput/Icon
onready var channel_name = $VBoxContainer/Options/Inputs/ChannelName

func _on_TextureButton_pressed():
	emit_signal("open_icon")
	icon.text = yield(	dialog_manager.file_dialog, "file_selected")


func _on_ChannelSettings_about_to_show():
		icon.editable = !Global.channels.empty()
		channel_name.editable = !Global.channels.empty()
		channel_name = Global.channels[0]
