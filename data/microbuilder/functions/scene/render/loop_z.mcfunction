scoreboard players operation z_pos microbuilder.calc = z microbuilder.calc
scoreboard players operation z_pos microbuilder.calc *= op microbuilder.calc
scoreboard players operation z_pos microbuilder.calc /= scale microbuilder.calc
scoreboard players operation z_pos microbuilder.calc += z_base microbuilder.calc
execute store result storage microbuilder:calc render.Pos[2] double 0.00138889 run scoreboard players get z_pos microbuilder.calc
data modify entity @s Pos set from storage microbuilder:calc render.Pos

data modify storage microbuilder:calc render.element set from storage microbuilder:calc render.scene[0][0][0]
data remove storage microbuilder:calc render.scene[0][0][0]

execute if data storage microbuilder:calc render.element.data at @s run function microbuilder:scene/render/element

scoreboard players add z microbuilder.calc 1
execute if score z microbuilder.calc < scale microbuilder.calc run function microbuilder:scene/render/loop_z