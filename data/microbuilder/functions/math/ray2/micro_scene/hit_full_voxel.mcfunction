data modify storage microbuilder:calc math.ray2.crossings append value [0d,0d,0d]
scoreboard players operation hit_face_x microbuilder.calc += base_x microbuilder.calc
scoreboard players operation hit_face_y microbuilder.calc += base_y microbuilder.calc
scoreboard players operation hit_face_z microbuilder.calc += base_z microbuilder.calc
execute store result storage microbuilder:calc math.ray2.crossings[-1][0] double 0.001 run scoreboard players get hit_face_x microbuilder.calc
execute store result storage microbuilder:calc math.ray2.crossings[-1][1] double 0.001 run scoreboard players get hit_face_y microbuilder.calc
execute store result storage microbuilder:calc math.ray2.crossings[-1][2] double 0.001 run scoreboard players get hit_face_z microbuilder.calc

execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} if score d_x microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.micro_scene_face_normal set value {x:1}
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} if score d_x microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.micro_scene_face_normal set value {x:-1}
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} if score d_y microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.micro_scene_face_normal set value {y:1}
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} if score d_y microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.micro_scene_face_normal set value {y:-1}
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} if score d_z microbuilder.calc matches -1 run data modify storage microbuilder:calc math.ray2.hit_info.micro_scene_face_normal set value {z:1}
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} if score d_z microbuilder.calc matches 1 run data modify storage microbuilder:calc math.ray2.hit_info.micro_scene_face_normal set value {z:-1}
execute store result storage microbuilder:calc math.ray2.hit_info.micro_scene_distance double 0.001 run scoreboard players get face_d_min microbuilder.calc
data modify storage microbuilder:calc math.ray2.hit_info.micro_scene_Pos set from storage microbuilder:calc math.ray2.crossings[-1]

data modify storage microbuilder:calc math.ray2 merge value {hit:1b,stop:1b,micro_scene:{stop:1b}}