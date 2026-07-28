extends Node2D
@onready var file_dialog: FileDialog = $FileDialog

func _ready() -> void:
	file_dialog.file_selected.connect(_on_file_dialog_file_selected)

func _on_upload_button_pressed() -> void:
	file_dialog.popup_centered()
	


func _on_file_dialog_file_selected(path: String) -> void:
	print("Selected location", path)
	
	var file = FileAccess.open(path, FileAccess.READ)
	if file:
		var content = file.get_as_text()
		file.close()
		print(content)
	
