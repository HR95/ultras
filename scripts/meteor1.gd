
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass




func _on_meteor_body_enter( body ):
	print(body.get_name())
	#get_tree().change_scene("res://scenes/over.tscn")
	if(body.get_name()=="robot"):
        self.queue_free()




