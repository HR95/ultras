
extends RigidBody2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass




func _on_bintang_body_enter( body ):
	print(body.get_name())
	if(body.get_name()=="ground"):
        self.queue_free()
