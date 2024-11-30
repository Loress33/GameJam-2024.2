extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    
    Global.player_anda = false
    Dialogic.signal_event.connect(_on_dialogic_signal)
    Dialogic.start("Inicio")
    

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    pass

func _on_dialogic_signal(argumento: String):
    if argumento == "telefone toca":
        $ColorRect.visible = false
