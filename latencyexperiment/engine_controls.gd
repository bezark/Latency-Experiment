extends VBoxContainer

@onready var fps_h_slider: HSlider = $FPS/HSlider
@onready var physics_h_slider: HSlider = $PhysicsSteps/HSlider
@onready var time_scale_h_slider: HSlider = $TimeScale/HSlider
@export var clear_color : Color

func _ready():
	fps_h_slider.value = 60
	physics_h_slider.value = 8
	time_scale_h_slider.value = 1.0
	RenderingServer.set_default_clear_color(clear_color)
	


func _on_h_slider_value_changed(value: float) -> void:
	$FPS/Value.text = str(value)
	Engine.max_fps = value


func _on_phys_h_slider_value_changed(value: float) -> void:
	$PhysicsSteps/Value.text = str(value)
	Engine.max_physics_steps_per_frame = value


func _on_timescale_h_slider_value_changed(value: float) -> void:
	$TimeScale/Value.text = str(value)
	Engine.time_scale = value


func randomize_sliders():
	fps_h_slider.value = randi_range(fps_h_slider.min_value, fps_h_slider.max_value)
	physics_h_slider.value = randi_range(physics_h_slider.min_value, physics_h_slider.max_value)
	time_scale_h_slider.value = randf_range(time_scale_h_slider.min_value, time_scale_h_slider.max_value)

func random_walk_sliders():
	fps_h_slider.value += randi_range(-10, 10)
	physics_h_slider.value += randi_range(-10, 10)
	time_scale_h_slider.value += randf_range(-0.5,0.5)
