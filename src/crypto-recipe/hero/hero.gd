class_name Hero
extends CharacterBody3D

@export var camera: CameraFollower
@export var speed: float = 400.0

@onready var player_input: PlayerInput = %PlayerInput

func _physics_process(delta: float) -> void:
	var direction: Vector3 = player_input.get_movement_direction(camera.camera)
	velocity = direction * speed * delta
	move_and_slide()
