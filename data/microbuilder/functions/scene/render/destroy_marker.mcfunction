scoreboard players set op microbuilder.calc 2
execute store result score x_quad microbuilder.calc run data get entity @s Pos[0] 1
execute store result score y_quad microbuilder.calc run data get entity @s Pos[1] 1
execute store result score z_quad microbuilder.calc run data get entity @s Pos[2] 1
scoreboard players operation x_quad microbuilder.calc %= op microbuilder.calc
scoreboard players operation y_quad microbuilder.calc %= op microbuilder.calc
scoreboard players operation z_quad microbuilder.calc %= op microbuilder.calc
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 0 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.000,distance=..1]
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 1 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.001,distance=..1]
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 0 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.010,distance=..1]
execute if score x_quad microbuilder.calc matches 0 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 1 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.011,distance=..1]
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 0 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.100,distance=..1]
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 0 if score z_quad microbuilder.calc matches 1 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.101,distance=..1]
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 0 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.110,distance=..1]
execute if score x_quad microbuilder.calc matches 1 if score y_quad microbuilder.calc matches 1 if score z_quad microbuilder.calc matches 1 run kill @e[tag=microbuilder.scene,tag=microbuilder.quad.111,distance=..1]