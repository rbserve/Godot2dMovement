extends Node


var velocity = Vector2.ZERO



func _ready():
	pass # Replace with function body.



func _process(delta):
	velocity = Vector2.ZERO
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
		
	
		
	if velocity.length() > 0:
		velocity += velocity.normalized()
			
	
 #directly run this function in PLAYER script after INSTANTIATE and add var SPEED
func move_parent_value(speed):
	return velocity * speed


