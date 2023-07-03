scoreboard players set op microbuilder.calc 2
execute store result score x_quad microbuilder.calc run data get entity @s Pos[0] 1
execute store result score y_quad microbuilder.calc run data get entity @s Pos[1] 1
execute store result score z_quad microbuilder.calc run data get entity @s Pos[2] 1
scoreboard players operation x_quad microbuilder.calc %= op microbuilder.calc
scoreboard players operation y_quad microbuilder.calc %= op microbuilder.calc
scoreboard players operation z_quad microbuilder.calc %= op microbuilder.calc
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 0 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.000"
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 1 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.001"
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 0 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.010"
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 1 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.011"
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 0 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.100"
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 1 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.101"
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 0 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.110"
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 1 run data modify storage microbuilder:calc render.quad set value "microbuilder.quad.111"

scoreboard players set op microbuilder.calc 720
execute store result score x_base microbuilder.calc run data get entity @s Pos[0] 720
execute store result score y_base microbuilder.calc run data get entity @s Pos[1] 720
execute store result score z_base microbuilder.calc run data get entity @s Pos[2] 720
scoreboard players operation x_base microbuilder.calc += render_offset microbuilder.calc
scoreboard players operation y_base microbuilder.calc += render_offset microbuilder.calc
scoreboard players operation z_base microbuilder.calc += render_offset microbuilder.calc

scoreboard players operation x_pos microbuilder.calc = x microbuilder.calc
scoreboard players operation y_pos microbuilder.calc = y microbuilder.calc
scoreboard players operation z_pos microbuilder.calc = z microbuilder.calc
scoreboard players operation x_pos microbuilder.calc *= op microbuilder.calc
scoreboard players operation y_pos microbuilder.calc *= op microbuilder.calc
scoreboard players operation z_pos microbuilder.calc *= op microbuilder.calc
scoreboard players operation x_pos microbuilder.calc /= scale microbuilder.calc
scoreboard players operation y_pos microbuilder.calc /= scale microbuilder.calc
scoreboard players operation z_pos microbuilder.calc /= scale microbuilder.calc
scoreboard players operation x_pos microbuilder.calc += x_base microbuilder.calc
scoreboard players operation y_pos microbuilder.calc += y_base microbuilder.calc
scoreboard players operation z_pos microbuilder.calc += z_base microbuilder.calc

data modify storage microbuilder:calc render.Pos set value [0.0d,0.0d,0.0d]
execute store result storage microbuilder:calc render.Pos[0] double 0.00138889 run scoreboard players get x_pos microbuilder.calc
execute store result storage microbuilder:calc render.Pos[1] double 0.00138889 run scoreboard players get y_pos microbuilder.calc
execute store result storage microbuilder:calc render.Pos[2] double 0.00138889 run scoreboard players get z_pos microbuilder.calc

execute if score x microbuilder.calc < scale microbuilder.calc run function microbuilder:scene/render/loop_x
kill @s