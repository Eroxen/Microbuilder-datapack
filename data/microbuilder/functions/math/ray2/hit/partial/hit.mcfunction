execute if score hit_partial_x microbuilder.calc matches 1 run scoreboard players operation partial_d_min microbuilder.calc < partial_d_n_x microbuilder.calc
execute if score hit_partial_y microbuilder.calc matches 1 run scoreboard players operation partial_d_min microbuilder.calc < partial_d_n_y microbuilder.calc
execute if score hit_partial_z microbuilder.calc matches 1 run scoreboard players operation partial_d_min microbuilder.calc < partial_d_n_z microbuilder.calc

scoreboard players operation surface_x microbuilder.calc = l_x microbuilder.calc
scoreboard players operation surface_x microbuilder.calc *= partial_d_min microbuilder.calc
scoreboard players operation surface_x microbuilder.calc /= precision microbuilder.calc
scoreboard players operation surface_x microbuilder.calc += precise_x microbuilder.calc

scoreboard players operation surface_y microbuilder.calc = l_y microbuilder.calc
scoreboard players operation surface_y microbuilder.calc *= partial_d_min microbuilder.calc
scoreboard players operation surface_y microbuilder.calc /= precision microbuilder.calc
scoreboard players operation surface_y microbuilder.calc += precise_y microbuilder.calc

scoreboard players operation surface_z microbuilder.calc = l_z microbuilder.calc
scoreboard players operation surface_z microbuilder.calc *= partial_d_min microbuilder.calc
scoreboard players operation surface_z microbuilder.calc /= precision microbuilder.calc
scoreboard players operation surface_z microbuilder.calc += precise_z microbuilder.calc

data modify storage microbuilder:calc math.ray2.crossings append value [0d,0d,0d]
execute store result storage microbuilder:calc math.ray2.crossings[-1][0] double 0.001 run scoreboard players get surface_x microbuilder.calc
execute store result storage microbuilder:calc math.ray2.crossings[-1][1] double 0.001 run scoreboard players get surface_y microbuilder.calc
execute store result storage microbuilder:calc math.ray2.crossings[-1][2] double 0.001 run scoreboard players get surface_z microbuilder.calc

data modify entity @s Pos set from storage microbuilder:calc math.ray2.crossings[-1]
data modify storage microbuilder:calc math.ray2 merge value {hit:1b,stop:1b}

execute if score partial_d_n_x microbuilder.calc = partial_d_min microbuilder.calc if score d_x microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.partial_face_normal set value {x:1}
execute if score partial_d_n_x microbuilder.calc = partial_d_min microbuilder.calc if score d_x microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.partial_face_normal set value {x:-1}
execute if score partial_d_n_y microbuilder.calc = partial_d_min microbuilder.calc if score d_y microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.partial_face_normal set value {y:1}
execute if score partial_d_n_y microbuilder.calc = partial_d_min microbuilder.calc if score d_y microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.partial_face_normal set value {y:-1}
execute if score partial_d_n_z microbuilder.calc = partial_d_min microbuilder.calc if score d_z microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.partial_face_normal set value {z:1}
execute if score partial_d_n_z microbuilder.calc = partial_d_min microbuilder.calc if score d_z microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.partial_face_normal set value {z:-1}
execute store result storage microbuilder:calc math.ray2.hit_info.partial_distance double 0.001 run scoreboard players get partial_d_min microbuilder.calc
data modify storage microbuilder:calc math.ray2.hit_info.partial_Pos set from storage microbuilder:calc math.ray2.crossings[-1]