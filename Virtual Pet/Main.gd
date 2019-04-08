extends Node




func _ready():
	$HPTimer.start()





#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass



func _on_HPTimer_timeout():
	set_fill_mode(get_fill_mode() - 1)
