class_name CameraFollower
extends Marker3D

@export var target: Node3D
@export var speed: float = 10.0

@onready var camera: Camera3D = %Camera3D

func _physics_process(delta: float) -> void:
	var direction: Vector3 = target.global_position - global_position
	global_position += direction * speed * delta
