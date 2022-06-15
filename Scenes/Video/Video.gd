extends VBoxContainer

onready var title_label = $HBoxContainer/VBoxContainer/Title

func set_title(title: String):
	title_label.text = ""
	if title.length() >= 70:
		for i in title:
			title_label.text += i
			if title_label.get_line_count() > 2:
				title_label.text = title_label.text.substr(0, title_label.text.length()-4) + "..."
				return

func _ready():
	set_title("soaimrsietn aroisetn oir arienstoi aer taiernt ua rtl lorenr  ipsum airestnaoiu aires otaiern aisetn aouftnao restn airsetna orsutnao risetnaoriestn aoriestnaroiest a")
