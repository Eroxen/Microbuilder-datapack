data modify storage microbuilder:calc new_scene.scene append from storage microbuilder:calc new_scene.element
scoreboard players remove i microbuilder.calc 1
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/create_empty_scene_loop