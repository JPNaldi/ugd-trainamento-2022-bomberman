extends KinematicBody2D

var velocity: Vector2

export (float) var speed
export (PackedScene) var projectile

func _physics_process(delta):
	
	var dir_input: Vector2
	dir_input.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	dir_input.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	
	velocity = move_and_slide(dir_input.normalized() * speed)
	
	if Input.is_action_just_pressed("fire"):
		var node = projectile.instance()
		node.position = position + Vector2(100,0)
		node.velocity = Vector2(50,0)
		get_parent().add_child(node)
		
