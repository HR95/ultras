
extends RigidBody2D

var scores = 0
var richtext = null

func _ready2():
	richtext = get_tree().get_root().get_node("Node2D/scores")
	set_process(true)

var btn_right = Input.is_action_pressed("btn_right")
var btn_left = Input.is_action_pressed("btn_left")

func _ready():
    set_fixed_process(true)

func _fixed_process(delta):
	btn_right = Input.is_action_pressed("btn_right")
	btn_left = Input.is_action_pressed("btn_left")
	
	if btn_left:
		self.set_linear_velocity(Vector2(-400,self.get_linear_velocity().y))
		print("harusnya kiri")
	elif btn_right:
		self.set_linear_velocity(Vector2(400,self.get_linear_velocity().y))
		print("harusnya kanan")
	else:
		self.set_linear_velocity(Vector2(0, self.get_linear_velocity().y))
		print("gggggg")



func _on_Area2D_body_enter( b ):
	
	if(b.is_in_group("bintang2")):
	

		b.queue_free()