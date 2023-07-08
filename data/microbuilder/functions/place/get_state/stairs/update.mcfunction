execute unless data storage microbuilder:calc update_neighbours.perspective.neighbour.property{type:"stairs"} unless data storage microbuilder:calc update_neighbours.perspective.neighbour{broken:1b,was:{property:{type:"stairs"}}} run return 0

execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{facing:"north"} run scoreboard players set #place.stairs.facing microbuilder.calc 0
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{facing:"east"} run scoreboard players set #place.stairs.facing microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{facing:"south"} run scoreboard players set #place.stairs.facing microbuilder.calc 2
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{facing:"west"} run scoreboard players set #place.stairs.facing microbuilder.calc 3

execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{half:"bottom"} run scoreboard players set #place.stairs.half microbuilder.calc 0
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{half:"top"} run scoreboard players set #place.stairs.half microbuilder.calc 1


function microbuilder:scene/api/get_horizontal_neighbours
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
scoreboard players operation #place.updated_state microbuilder.calc = #place.stairs.facing microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players set #temp.op microbuilder.calc 5
scoreboard players operation #place.updated_state microbuilder.calc += #place.stairs.half microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc += #place.stairs.shape microbuilder.calc