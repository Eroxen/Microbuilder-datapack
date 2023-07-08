execute if data storage microbuilder:calc math.rotation{horizontal:"north"} run scoreboard players set #place.stairs.facing microbuilder.calc 0
execute if data storage microbuilder:calc math.rotation{horizontal:"east"} run scoreboard players set #place.stairs.facing microbuilder.calc 1
execute if data storage microbuilder:calc math.rotation{horizontal:"south"} run scoreboard players set #place.stairs.facing microbuilder.calc 2
execute if data storage microbuilder:calc math.rotation{horizontal:"west"} run scoreboard players set #place.stairs.facing microbuilder.calc 3

scoreboard players set #place.stairs.half microbuilder.calc 0
execute if score voxel_y microbuilder.calc matches 500.. run scoreboard players set #place.stairs.half microbuilder.calc 1

scoreboard players set #place.stairs.shape microbuilder.calc 0
function microbuilder:place/get_state/stairs/get_connections

scoreboard players set #temp.op microbuilder.calc 2
scoreboard players add #place.stairs.half microbuilder.calc 1
scoreboard players operation #place.stairs.half microbuilder.calc %= #temp.op microbuilder.calc

scoreboard players set #temp.op microbuilder.calc 4
execute if score #place.stairs.facing microbuilder.calc matches 1 run scoreboard players set #place.stairs.facing microbuilder.calc 7
execute if score #place.stairs.facing microbuilder.calc matches 2 run scoreboard players set #place.stairs.facing microbuilder.calc 5
execute if score #place.stairs.facing microbuilder.calc matches 3 run scoreboard players set #place.stairs.facing microbuilder.calc 6
scoreboard players operation #place.stairs.facing microbuilder.calc %= #temp.op microbuilder.calc

scoreboard players set #temp.op microbuilder.calc 2
scoreboard players operation #place.state microbuilder.calc = #place.stairs.facing microbuilder.calc
scoreboard players operation #place.state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players set #temp.op microbuilder.calc 5
scoreboard players operation #place.state microbuilder.calc += #place.stairs.half microbuilder.calc
scoreboard players operation #place.state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players operation #place.state microbuilder.calc += #place.stairs.shape microbuilder.calc