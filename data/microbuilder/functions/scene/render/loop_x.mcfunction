scoreboard players operation x_pos microbuilder.calc = x microbuilder.calc
scoreboard players operation x_pos microbuilder.calc *= op microbuilder.calc
scoreboard players operation x_pos microbuilder.calc /= scale microbuilder.calc
scoreboard players operation x_pos microbuilder.calc += x_base microbuilder.calc
execute store result storage microbuilder:calc render.Pos[0] double 0.00138889 run scoreboard players get x_pos microbuilder.calc

scoreboard players set y microbuilder.calc 0
execute if data storage microbuilder:calc render.scene[0][][].data run function microbuilder:scene/render/loop_y

data remove storage microbuilder:calc render.scene[0]

scoreboard players add x microbuilder.calc 1
execute if score x microbuilder.calc < scale microbuilder.calc run function microbuilder:scene/render/loop_x