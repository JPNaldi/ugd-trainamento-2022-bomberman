extends Label

var life = 0
var new_label = Label.new()

func _ready():
	add_child(new_label)
	life = 3
	new_label.text = str(life)

func do_damage(amount):
	life -= 1
	new_label.text = str(life)

func TakeDamage():
	
