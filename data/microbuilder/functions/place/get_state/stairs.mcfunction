scoreboard players set #place.state microbuilder.calc 0
execute if data storage microbuilder:calc math.rotation{horizontal:"south"} run scoreboard players add #place.state microbuilder.calc 10
execute if data storage microbuilder:calc math.rotation{horizontal:"west"} run scoreboard players set #place.state microbuilder.calc 20
execute if data storage microbuilder:calc math.rotation{horizontal:"east"} run scoreboard players set #place.state microbuilder.calc 30
execute if score voxel_y microbuilder.calc matches ..500 run scoreboard players add #place.state microbuilder.calc 5