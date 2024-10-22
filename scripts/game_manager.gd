extends Node

var score = 0
var start_time: int = 0

@export var win_screen: WinScreen

func _ready() -> void:
	start_time = Time.get_unix_time_from_system()

func add_point():
	score += 1

func win():
	win_screen.win(Time.get_unix_time_from_system()-start_time, score, get_tree().get_node_count_in_group("coins"))
	await get_tree().create_timer(5.0).timeout
	reset()

func reset():
	get_tree().reload_current_scene()
