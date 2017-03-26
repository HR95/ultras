extends Node2D

export var delay = 3
export (PackedScene) var munculmeteor
var timer = 0

func _ready():
    set_process(true)
func _process(delta):
        timer += delta
        if(timer >= delay):
            timer = 0
            create_meteor()
func create_meteor():
        print("Creating meteor")
        var e = munculmeteor.instance()
        e.add_to_group("meteor2")
        add_child(e)
        e.set_pos(Vector2(rand_range(0,get_viewport().get_visible_rect().size.x),0))