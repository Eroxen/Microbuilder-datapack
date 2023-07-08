scoreboard players set #update_neighbours.overshoot_direction microbuilder.calc -1
execute if score x microbuilder.calc matches ..-1 run scoreboard players set #update_neighbours.overshoot_direction microbuilder.calc 0
execute if score x microbuilder.calc >= scale microbuilder.calc run scoreboard players set #update_neighbours.overshoot_direction microbuilder.calc 1
execute if score y microbuilder.calc matches ..-1 run scoreboard players set #update_neighbours.overshoot_direction microbuilder.calc 2
execute if score y microbuilder.calc >= scale microbuilder.calc run scoreboard players set #update_neighbours.overshoot_direction microbuilder.calc 3
execute if score z microbuilder.calc matches ..-1 run scoreboard players set #update_neighbours.overshoot_direction microbuilder.calc 4
execute if score z microbuilder.calc >= scale microbuilder.calc run scoreboard players set #update_neighbours.overshoot_direction microbuilder.calc 5

execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 0 run scoreboard players operation x microbuilder.calc += scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 1 run scoreboard players operation x microbuilder.calc -= scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 2 run scoreboard players operation y microbuilder.calc += scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 3 run scoreboard players operation y microbuilder.calc -= scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 4 run scoreboard players operation z microbuilder.calc += scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 5 run scoreboard players operation z microbuilder.calc -= scale microbuilder.calc

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:break/update_neighbours/overshoot_on_controller

execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 0 run scoreboard players operation x microbuilder.calc -= scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 1 run scoreboard players operation x microbuilder.calc += scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 2 run scoreboard players operation y microbuilder.calc -= scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 3 run scoreboard players operation y microbuilder.calc += scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 4 run scoreboard players operation z microbuilder.calc -= scale microbuilder.calc
execute if score #update_neighbours.overshoot_direction microbuilder.calc matches 5 run scoreboard players operation z microbuilder.calc += scale microbuilder.calc