extends Control

onready var video_container = $Body/VideoScroll/Centerify/VideoContainer
onready var channel_select = $Body/Toolbar/ChannelSelect

var add = preload("res://Assets/Icons/Add.svg")

func _ready():
	channel_select.add_icon_item(add, "Add channel")

func _on_AddNew_pressed():
	var vid = ColorRect.new()
	vid.rect_min_size = Vector2(320, 180)
	video_container.add_child(vid)
