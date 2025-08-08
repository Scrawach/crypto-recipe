class_name CameraFollower
extends Marker3D

@export var target: Node3D

@onready var camera: Camera3D = %Camera3D


func _physics_process(delta: float) -> void:
	# TODO: make smooth movement for camera
	global_position = target.global_position
