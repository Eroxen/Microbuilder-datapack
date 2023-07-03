scoreboard players operation face microbuilder.calc = i microbuilder.calc
scoreboard players operation face microbuilder.calc *= precision microbuilder.calc
scoreboard players operation face microbuilder.calc /= scale microbuilder.calc

execute store result storage microbuilder:calc math.ray2.micro_scene.face double 0.001 run scoreboard players get face microbuilder.calc

execute if score d_x microbuilder.calc matches -1 if score face microbuilder.calc <= partial_x microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.x prepend from storage microbuilder:calc math.ray2.micro_scene.face
execute if score d_x microbuilder.calc matches 1 if score face microbuilder.calc >= partial_x microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.x append from storage microbuilder:calc math.ray2.micro_scene.face
execute if score d_y microbuilder.calc matches -1 if score face microbuilder.calc <= partial_y microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.y prepend from storage microbuilder:calc math.ray2.micro_scene.face
execute if score d_y microbuilder.calc matches 1 if score face microbuilder.calc >= partial_y microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.y append from storage microbuilder:calc math.ray2.micro_scene.face
execute if score d_z microbuilder.calc matches -1 if score face microbuilder.calc <= partial_z microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.z prepend from storage microbuilder:calc math.ray2.micro_scene.face
execute if score d_z microbuilder.calc matches 1 if score face microbuilder.calc >= partial_z microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.z append from storage microbuilder:calc math.ray2.micro_scene.face

scoreboard players add i microbuilder.calc 1
execute if score i microbuilder.calc <= scale microbuilder.calc run function microbuilder:math/ray2/hit/micro_scene/faces_array