@tool

extends HBoxContainer
@export var label : String
@export var min : int = 0
@export var max : int = 100
@export var step : int = 1

@onready var h_slider: HSlider = $HSlider

func _ready():
	h_slider.min_value = min
	h_slider.max_value = max
	h_slider.step = step
	


func _on_h_slider_value_changed(value: float) -> void:
	pass # Replace with function body.
