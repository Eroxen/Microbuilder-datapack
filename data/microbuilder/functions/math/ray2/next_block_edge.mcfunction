scoreboard players set d_min microbuilder.calc 999999999

scoreboard players operation d_n_x microbuilder.calc = block_x microbuilder.calc
scoreboard players operation d_n_x microbuilder.calc += next_edge_x microbuilder.calc
scoreboard players operation d_n_x microbuilder.calc *= precision microbuilder.calc
scoreboard players operation precise_x microbuilder.calc = d_n_x microbuilder.calc
scoreboard players operation d_n_x microbuilder.calc -= l_0_x microbuilder.calc
scoreboard players operation d_n_x microbuilder.calc *= precision microbuilder.calc
scoreboard players operation d_n_x microbuilder.calc /= l_x microbuilder.calc

execute if score d_n_x microbuilder.calc matches 1.. run scoreboard players operation d_min microbuilder.calc < d_n_x microbuilder.calc


scoreboard players operation d_n_y microbuilder.calc = block_y microbuilder.calc
scoreboard players operation d_n_y microbuilder.calc += next_edge_y microbuilder.calc
scoreboard players operation d_n_y microbuilder.calc *= precision microbuilder.calc
scoreboard players operation precise_y microbuilder.calc = d_n_y microbuilder.calc
scoreboard players operation d_n_y microbuilder.calc -= l_0_y microbuilder.calc
scoreboard players operation d_n_y microbuilder.calc *= precision microbuilder.calc
scoreboard players operation d_n_y microbuilder.calc /= l_y microbuilder.calc

execute if score d_n_y microbuilder.calc matches 1.. run scoreboard players operation d_min microbuilder.calc < d_n_y microbuilder.calc


scoreboard players operation d_n_z microbuilder.calc = block_z microbuilder.calc
scoreboard players operation d_n_z microbuilder.calc += next_edge_z microbuilder.calc
scoreboard players operation d_n_z microbuilder.calc *= precision microbuilder.calc
scoreboard players operation precise_z microbuilder.calc = d_n_z microbuilder.calc
scoreboard players operation d_n_z microbuilder.calc -= l_0_z microbuilder.calc
scoreboard players operation d_n_z microbuilder.calc *= precision microbuilder.calc
scoreboard players operation d_n_z microbuilder.calc /= l_z microbuilder.calc

execute if score d_n_z microbuilder.calc matches 1.. run scoreboard players operation d_min microbuilder.calc < d_n_z microbuilder.calc


execute if score d_n_x microbuilder.calc = d_min microbuilder.calc run function microbuilder:math/ray2/next_block/x
execute if score d_n_y microbuilder.calc = d_min microbuilder.calc run function microbuilder:math/ray2/next_block/y
execute if score d_n_z microbuilder.calc = d_min microbuilder.calc run function microbuilder:math/ray2/next_block/z

data modify storage microbuilder:calc math.ray2.crossings append value [0d,0d,0d]
execute store result storage microbuilder:calc math.ray2.crossings[-1][0] double 0.001 run scoreboard players get precise_x microbuilder.calc
execute store result storage microbuilder:calc math.ray2.crossings[-1][1] double 0.001 run scoreboard players get precise_y microbuilder.calc
execute store result storage microbuilder:calc math.ray2.crossings[-1][2] double 0.001 run scoreboard players get precise_z microbuilder.calc

data modify entity @s Pos set from storage microbuilder:calc math.ray2.crossings[-1]