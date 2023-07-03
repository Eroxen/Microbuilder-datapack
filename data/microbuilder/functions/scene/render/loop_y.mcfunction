scoreboard players operation y_pos microbuilder.calc = y microbuilder.calc
scoreboard players operation y_pos microbuilder.calc *= op microbuilder.calc
scoreboard players operation y_pos microbuilder.calc /= scale microbuilder.calc
scoreboard players operation y_pos microbuilder.calc += y_base microbuilder.calc
execute store result storage microbuilder:calc render.Pos[1] double 0.00138889 run scoreboard players get y_pos microbuilder.calc

scoreboard players set z microbuilder.calc 0
execute if data storage microbuilder:calc render.scene[0][0][].data run function microbuilder:scene/render/loop_z

data remove storage microbuilder:calc render.scene[0][0]

scoreboard players add y microbuilder.calc 1
execute if score y microbuilder.calc < scale microbuilder.calc run function microbuilder:scene/render/loop_y