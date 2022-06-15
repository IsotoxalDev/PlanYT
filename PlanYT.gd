extends Control

signal channel_changed()

onready var video_container = $Body/VideoScroll/Centerify/VideoContainer
onready var channel_select = $Body/Toolbar/ChannelSelect

var add = preload("res://Assets/Icons/Add.svg")
var video = preload("res://Scenes/Video/Video.tscn")

func _on_AddNew_pressed():
	var vid = video.instance()
	video_container.add_child(vid)

func _on_Settings_pressed():
	$DialogManager/ChannelSettings.popup_centered()

func add_channel():
	pass
