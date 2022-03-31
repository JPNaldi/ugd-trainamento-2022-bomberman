extends KinematicBody2D

var velocity : Vector2 = Vector2()
var direction : Vector2 = Vector2()
var health = 3

func read_input():
	velocity = Vector2()
	
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		direction = Vector2(0, -1)
		
	if Input.is_action_pressed("down"):
		velocity.y += 1
		direction = Vector2(0, 1)
		
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		direction = Vector2(-1, 0)
		
	if Input.is_action_pressed("right"):
		velocity.x += 1
		direction = Vector2(1, 0)
	
	velocity = velocity.normalized()
	velocity = move_and_slide(velocity * 200)

func _physics_process(delta):
	read_input()

func TakeDamage():
	if (life = 3):
		var Life_p1 = get_parent().get_parent().get_node ("Life_p1")
		Label -= 1

	if (life = 2):
		var life = get_parent().get_parent().get_node ("Life_p1")
		life -= 1

	if (life = 1):
		queue_free()
		get_tree().reload_current_scene()

func _on_Area2D_body_entered(body):
	life -= 1
	print ("damage")
