scoreboard players set #overshoot_direction microbuilder.calc -1
execute if score x microbuilder.calc matches ..-1 run scoreboard players set #overshoot_direction microbuilder.calc 0
execute if score x microbuilder.calc >= scale microbuilder.calc run scoreboard players set #overshoot_direction microbuilder.calc 1
execute if score y microbuilder.calc matches ..-1 run scoreboard players set #overshoot_direction microbuilder.calc 2
execute if score y microbuilder.calc >= scale microbuilder.calc run scoreboard players set #overshoot_direction microbuilder.calc 3
execute if score z microbuilder.calc matches ..-1 run scoreboard players set #overshoot_direction microbuilder.calc 4
execute if score z microbuilder.calc >= scale microbuilder.calc run scoreboard players set #overshoot_direction microbuilder.calc 5

execute if score #overshoot_direction microbuilder.calc matches 0 run scoreboard players operation x microbuilder.calc += scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 1 run scoreboard players operation x microbuilder.calc -= scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 2 run scoreboard players operation y microbuilder.calc += scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 3 run scoreboard players operation y microbuilder.calc -= scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 4 run scoreboard players operation z microbuilder.calc += scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 5 run scoreboard players operation z microbuilder.calc -= scale microbuilder.calc

scoreboard players set #neighbour_scale microbuilder.calc 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 store result score #neighbour_scale microbuilder.calc run data get entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] data.scale
execute if score #neighbour_scale microbuilder.calc = scale microbuilder.calc align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage microbuilder:calc scene set from entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] data.scene
execute if score #neighbour_scale microbuilder.calc = scale microbuilder.calc run function microbuilder:scene/api/get_element

execute if score #overshoot_direction microbuilder.calc matches 0 run scoreboard players operation x microbuilder.calc -= scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 1 run scoreboard players operation x microbuilder.calc += scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 2 run scoreboard players operation y microbuilder.calc -= scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 3 run scoreboard players operation y microbuilder.calc += scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 4 run scoreboard players operation z microbuilder.calc -= scale microbuilder.calc
execute if score #overshoot_direction microbuilder.calc matches 5 run scoreboard players operation z microbuilder.calc += scale microbuilder.calc