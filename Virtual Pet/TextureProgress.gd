extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var HPvalue
var SPvalue
var FPvalue

func _ready():
	pass

#func _process(delta):


func _on_HPTimer_timeout():
	HPvalue = $HPBarContainer/HPBar.get_value()
	$HPBarContainer/HPBar.set_value( HPvalue - 1)

func _on_SPTimer_timeout():
	SPvalue = $SPBarContainer/SPBar.get_value()
	$SPBarContainer/SPBar.set_value( SPvalue - 1)


func _on_FPTimer_timeout():
	FPvalue = $FPBarContainer/FPBar.get_value()
	$FPBarContainer/FPBar.set_value( FPvalue - 1)


func _on_Play_pressed():
	$HPBarContainer/HPBar.set_value( HPvalue + 10)
	$Container/CenterContainer/HBoxContainer/Play.disabled = true
	$PlayTimer.start()


func _on_PlayTimer_timeout():
	$Container/CenterContainer/HBoxContainer/Play.disabled = false


func _on_Sleep_pressed():
	$SPBarContainer/SPBar.set_value( SPvalue + 5)
	$Container/CenterContainer/HBoxContainer/Sleep.disabled = true
	$SleepTimer.start()

func _on_SleepTimer_timeout():
	$Container/CenterContainer/HBoxContainer/Sleep.disabled = false
	
func _on_Feed_pressed():
	$FPBarContainer/FPBar.set_value( FPvalue + 3)
	$Container/CenterContainer/HBoxContainer/Feed.disabled = true
	$HungerTimer.start()

func _on_HungerTimer_timeout():
	$Container/CenterContainer/HBoxContainer/Feed.disabled = false