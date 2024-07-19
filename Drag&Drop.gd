extends TextureRect

var tileInfo


func _ready():
	pass


func _get_drag_data(at_position):
	var rectData = self
	
	if rectData != null:
		if rectData.texture == null:
			return
		
		var dragPreviewNode = rectData.duplicate()
		dragPreviewNode.custom_minimum_size = Vector2(20, 20)
		set_drag_preview(dragPreviewNode)
		
	return rectData
	
func _can_drop_data(at_position, data):
	
	return true
	
	
func _drop_data(at_position, rectData):
	var targetTexture = texture
	texture = rectData.texture

	#change the previous tile 
	if targetTexture == null:
		rectData.texture = null
	else:
		rectData.texture = targetTexture

