extends Polygon2D
class_name Poly

signal poly_entered

func _on_Poly_mouse_entered():
	print("poly entered")
	emit_signal("poly_entered")

func _on_mouse_entered():
	print("mouse entered")
	emit_signal("poly_entered")

func _on_focus_entered():
	print("focus entered")
	
func _on_Poly_focus_entered():
	print("poly focus entered")	
