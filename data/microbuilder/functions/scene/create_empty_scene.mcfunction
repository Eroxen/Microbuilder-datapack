data modify storage microbuilder:calc new_scene set value {scene:[],element:{}}
scoreboard players operation i microbuilder.calc = scale microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/create_empty_scene_loop

data modify storage microbuilder:calc new_scene.element set from storage microbuilder:calc new_scene.scene
data modify storage microbuilder:calc new_scene.scene set value []
scoreboard players operation i microbuilder.calc = scale microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/create_empty_scene_loop

data modify storage microbuilder:calc new_scene.element set from storage microbuilder:calc new_scene.scene
data modify storage microbuilder:calc new_scene.scene set value []
scoreboard players operation i microbuilder.calc = scale microbuilder.calc
execute if score i microbuilder.calc matches 1.. run function microbuilder:scene/create_empty_scene_loop

data modify storage microbuilder:calc scene set from storage microbuilder:calc new_scene.scene