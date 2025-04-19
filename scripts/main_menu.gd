extends Control

@onready var start_button = $VBoxContainer/Iniciar
@onready var options_button = $VBoxContainer/Opciones
@onready var quit_button = $VBoxContainer/Salir

func _ready():
	start_button.grab_focus()
	start_button.pressed.connect(_on_start_pressed())
	options_button.pressed.connect(_on_options_pressed())
	quit_button.pressed.connect(_on_quit_pressed())

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/game/Game.tscn")

func _on_options_pressed():
	# TODO: mostrar escena de opciones
	print("Opciones no disponibles todavía")

func _on_quit_pressed():
	get_tree().quit()
