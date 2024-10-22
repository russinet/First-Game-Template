extends Control
class_name WinScreen

static var WIN_PHRASES: Array[String] = [
	"Good for you",
	"Yippee!",
	"Cool :)",
	"Damn son",
	"Neat.",
	"Woah :O",
	"Best player fr :V",
	":D",
	"Now this is epic",
	"Victory Royale",
]

@export var stats: Label
@export var horn_sound: AudioStreamPlayer
@export var particles: GPUParticles2D

func win(time: float, coins_collected: int, coins_total: int):
	show()
	stats.text = ""
	stats.text += WIN_PHRASES.pick_random() + "\n"
	stats.text += "Time: " + Time.get_time_string_from_unix_time(time) + "\n"
	stats.text += "Coins: " + str(coins_collected) + "/" + str(coins_total)
	particles.restart()
	horn_sound.play()
