# x face
execute store result score x_face_x microbuilder.calc run data get storage microbuilder:calc math.ray2.micro_scene.x[0] 1000
scoreboard players operation x_face_d_n_x microbuilder.calc = x_face_x microbuilder.calc
scoreboard players operation x_face_d_n_x microbuilder.calc -= partial_x microbuilder.calc
scoreboard players operation x_face_d_n_x microbuilder.calc *= precision microbuilder.calc
scoreboard players operation x_face_d_n_x microbuilder.calc /= l_x microbuilder.calc

scoreboard players operation x_face_y microbuilder.calc = l_y microbuilder.calc
scoreboard players operation x_face_y microbuilder.calc *= x_face_d_n_x microbuilder.calc
scoreboard players operation x_face_y microbuilder.calc /= precision microbuilder.calc
scoreboard players operation x_face_y microbuilder.calc += partial_y microbuilder.calc

scoreboard players operation x_face_z microbuilder.calc = l_z microbuilder.calc
scoreboard players operation x_face_z microbuilder.calc *= x_face_d_n_x microbuilder.calc
scoreboard players operation x_face_z microbuilder.calc /= precision microbuilder.calc
scoreboard players operation x_face_z microbuilder.calc += partial_z microbuilder.calc

# y face
execute store result score y_face_y microbuilder.calc run data get storage microbuilder:calc math.ray2.micro_scene.y[0] 1000
scoreboard players operation y_face_d_n_y microbuilder.calc = y_face_y microbuilder.calc
scoreboard players operation y_face_d_n_y microbuilder.calc -= partial_y microbuilder.calc
scoreboard players operation y_face_d_n_y microbuilder.calc *= precision microbuilder.calc
scoreboard players operation y_face_d_n_y microbuilder.calc /= l_y microbuilder.calc

scoreboard players operation y_face_x microbuilder.calc = l_x microbuilder.calc
scoreboard players operation y_face_x microbuilder.calc *= y_face_d_n_y microbuilder.calc
scoreboard players operation y_face_x microbuilder.calc /= precision microbuilder.calc
scoreboard players operation y_face_x microbuilder.calc += partial_x microbuilder.calc

scoreboard players operation y_face_z microbuilder.calc = l_z microbuilder.calc
scoreboard players operation y_face_z microbuilder.calc *= y_face_d_n_y microbuilder.calc
scoreboard players operation y_face_z microbuilder.calc /= precision microbuilder.calc
scoreboard players operation y_face_z microbuilder.calc += partial_z microbuilder.calc

# z face
execute store result score z_face_z microbuilder.calc run data get storage microbuilder:calc math.ray2.micro_scene.z[0] 1000
scoreboard players operation z_face_d_n_z microbuilder.calc = z_face_z microbuilder.calc
scoreboard players operation z_face_d_n_z microbuilder.calc -= partial_z microbuilder.calc
scoreboard players operation z_face_d_n_z microbuilder.calc *= precision microbuilder.calc
scoreboard players operation z_face_d_n_z microbuilder.calc /= l_z microbuilder.calc

scoreboard players operation z_face_x microbuilder.calc = l_x microbuilder.calc
scoreboard players operation z_face_x microbuilder.calc *= z_face_d_n_z microbuilder.calc
scoreboard players operation z_face_x microbuilder.calc /= precision microbuilder.calc
scoreboard players operation z_face_x microbuilder.calc += partial_x microbuilder.calc

scoreboard players operation z_face_y microbuilder.calc = l_y microbuilder.calc
scoreboard players operation z_face_y microbuilder.calc *= z_face_d_n_z microbuilder.calc
scoreboard players operation z_face_y microbuilder.calc /= precision microbuilder.calc
scoreboard players operation z_face_y microbuilder.calc += partial_y microbuilder.calc

scoreboard players set face_d_min microbuilder.calc 999999999
execute if score x_face_d_n_x microbuilder.calc matches 0.. run scoreboard players operation face_d_min microbuilder.calc < x_face_d_n_x microbuilder.calc
execute if score y_face_d_n_y microbuilder.calc matches 0.. run scoreboard players operation face_d_min microbuilder.calc < y_face_d_n_y microbuilder.calc
execute if score z_face_d_n_z microbuilder.calc matches 0.. run scoreboard players operation face_d_min microbuilder.calc < z_face_d_n_z microbuilder.calc

execute if score x_face_d_n_x microbuilder.calc = face_d_min microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.hit_face set value "x"
execute if score y_face_d_n_y microbuilder.calc = face_d_min microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.hit_face set value "y"
execute if score z_face_d_n_z microbuilder.calc = face_d_min microbuilder.calc run data modify storage microbuilder:calc math.ray2.micro_scene.hit_face set value "z"

execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} run scoreboard players operation hit_face_x microbuilder.calc = x_face_x microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} run scoreboard players operation hit_face_y microbuilder.calc = x_face_y microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} run scoreboard players operation hit_face_z microbuilder.calc = x_face_z microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} run scoreboard players operation hit_face_x microbuilder.calc = y_face_x microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} run scoreboard players operation hit_face_y microbuilder.calc = y_face_y microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} run scoreboard players operation hit_face_z microbuilder.calc = y_face_z microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} run scoreboard players operation hit_face_x microbuilder.calc = z_face_x microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} run scoreboard players operation hit_face_y microbuilder.calc = z_face_y microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} run scoreboard players operation hit_face_z microbuilder.calc = z_face_z microbuilder.calc
scoreboard players operation x microbuilder.calc = hit_face_x microbuilder.calc
scoreboard players operation y microbuilder.calc = hit_face_y microbuilder.calc
scoreboard players operation z microbuilder.calc = hit_face_z microbuilder.calc
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} if score d_x microbuilder.calc matches 1 run scoreboard players add x microbuilder.calc 30
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} if score d_y microbuilder.calc matches 1 run scoreboard players add y microbuilder.calc 30
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} if score d_z microbuilder.calc matches 1 run scoreboard players add z microbuilder.calc 30
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} if score d_x microbuilder.calc matches -1 run scoreboard players remove x microbuilder.calc 30
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} if score d_y microbuilder.calc matches -1 run scoreboard players remove y microbuilder.calc 30
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} if score d_z microbuilder.calc matches -1 run scoreboard players remove z microbuilder.calc 30
scoreboard players operation x microbuilder.calc *= scale microbuilder.calc
scoreboard players operation y microbuilder.calc *= scale microbuilder.calc
scoreboard players operation z microbuilder.calc *= scale microbuilder.calc
scoreboard players operation x microbuilder.calc /= precision microbuilder.calc
scoreboard players operation y microbuilder.calc /= precision microbuilder.calc
scoreboard players operation z microbuilder.calc /= precision microbuilder.calc
#tellraw @a [{"score":{"name":"hit_face_x","objective":"microbuilder.calc"}},{"text":", "},{"score":{"name":"hit_face_y","objective":"microbuilder.calc"}},{"text":", "},{"score":{"name":"hit_face_z","objective":"microbuilder.calc"}},{"text":" | "},{"score":{"name":"x","objective":"microbuilder.calc"}},{"text":", "},{"score":{"name":"y","objective":"microbuilder.calc"}},{"text":", "},{"score":{"name":"z","objective":"microbuilder.calc"}}]

function microbuilder:scene/api/get_element
#tellraw @a {"nbt":"scene_element","storage":"microbuilder:calc"}
execute store result score contents microbuilder.calc run data get storage microbuilder:calc scene_element
execute if score contents microbuilder.calc matches 1.. run function microbuilder:math/ray2/hit/micro_scene/hit_voxel

execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"x"} run data remove storage microbuilder:calc math.ray2.micro_scene.x[0]
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"y"} run data remove storage microbuilder:calc math.ray2.micro_scene.y[0]
execute if data storage microbuilder:calc math.ray2.micro_scene{hit_face:"z"} run data remove storage microbuilder:calc math.ray2.micro_scene.z[0]


execute unless data storage microbuilder:calc math.ray2.micro_scene{stop:1b} if data storage microbuilder:calc math.ray2.micro_scene.x[0] if data storage microbuilder:calc math.ray2.micro_scene.y[0] if data storage microbuilder:calc math.ray2.micro_scene.z[0] run function microbuilder:math/ray2/hit/micro_scene/loop