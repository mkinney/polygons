extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	print("create some polygons")
	
	var poly1 = Poly.new()
	poly1.set_polygon(Array([Vector2(40, 40), Vector2(40, 50), Vector2(50, 50), Vector2(50, 40)]))
	var coll1 = CollisionPolygon2D.new()
	coll1.set_polygon(poly1.get_polygon())
	poly1.poly_entered.connect(poly1_entered)
	add_child(poly1)
		
	var poly2 = Poly.new()
	poly2.set_polygon(Array([Vector2(240, 240), Vector2(240, 250), Vector2(250, 250), Vector2(250, 240)]))
	poly2.set_color(Color.RED)
	add_child(poly2)

func poly1_entered():
	print("woo hoo")

	
func _input(event):
	if event.is_pressed():
		print("hello4")	

