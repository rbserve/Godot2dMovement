# change this to node depends on the usage
extends Area2D

var velocity = Vector2.ZERO
var speed = 300


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
		
	#move the char in this script. Change this depends on the usage
	position += move_parent_value(speed) * delta
	
 #directly run this function in PLAYER script after INSTANTIATE and add var SPEED
func move_parent_value(speed):
	return velocity * speed


