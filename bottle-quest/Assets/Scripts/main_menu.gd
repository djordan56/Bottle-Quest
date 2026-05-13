extends Control

func _ready() -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Assets/Scenes/Areas/area_1.tscn")


func _on_quite_pressed() -> void:
	get_tree().quit()
