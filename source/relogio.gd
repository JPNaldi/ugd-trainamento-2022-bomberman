extends TileMap

var start_time
var duration

func set_start_time():
	start_time = 300 #the time at the moment in seconds
	
func time_convert(time_in_sec):
	var seconds = time_in_sec%60
	var minutes = (time_in_sec/60)%60
	return "%02d:%02d" % [minutes, seconds]

func elapsed_time():
	var _elapsed_time = 1 - start_time #actual time - start time

func get_remainnging_time():
	return duration - elapsed_time()

func _on_clock_ready():
	pass # Replace with function body.
