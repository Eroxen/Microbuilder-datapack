execute store result score surface_x microbuilder.calc run data get storage microbuilder:calc math.ray2.partial.x[0].s 1000
scoreboard players operation partial_d_n_x microbuilder.calc = surface_x microbuilder.calc
scoreboard players operation partial_d_n_x microbuilder.calc -= partial_x microbuilder.calc
scoreboard players operation partial_d_n_x microbuilder.calc *= precision microbuilder.calc
scoreboard players operation partial_d_n_x microbuilder.calc /= l_x microbuilder.calc

scoreboard players operation surface_y microbuilder.calc = l_y microbuilder.calc
scoreboard players operation surface_y microbuilder.calc *= partial_d_n_x microbuilder.calc
scoreboard players operation surface_y microbuilder.calc /= precision microbuilder.calc
scoreboard players operation surface_y microbuilder.calc += partial_y microbuilder.calc

scoreboard players operation surface_z microbuilder.calc = l_z microbuilder.calc
scoreboard players operation surface_z microbuilder.calc *= partial_d_n_x microbuilder.calc
scoreboard players operation surface_z microbuilder.calc /= precision microbuilder.calc
scoreboard players operation surface_z microbuilder.calc += partial_z microbuilder.calc

execute if score partial_d_n_x microbuilder.calc matches 0.. unless data storage microbuilder:calc math.ray2.partial.x[0].partial if score surface_y microbuilder.calc matches 0..1000 if score surface_z microbuilder.calc matches 0..1000 run scoreboard players set hit_partial_x microbuilder.calc 1
execute if score partial_d_n_x microbuilder.calc matches 0.. if data storage microbuilder:calc math.ray2.partial.x[0].partial run function microbuilder:math/ray2/hit/partial/intersect_x_partial

data remove storage microbuilder:calc math.ray2.partial.x[0]
execute if score hit_partial_x microbuilder.calc matches 0 if data storage microbuilder:calc math.ray2.partial.x[0] run function microbuilder:math/ray2/hit/partial/intersect_x_loop