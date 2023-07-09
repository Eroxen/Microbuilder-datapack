scoreboard players set #place.connect.east microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{east:"none"} run scoreboard players set #place.connect.east microbuilder.calc 0

scoreboard players set #place.connect.north microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{north:"none"} run scoreboard players set #place.connect.north microbuilder.calc 0

scoreboard players set #place.connect.south microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{south:"none"} run scoreboard players set #place.connect.south microbuilder.calc 0

scoreboard players set #place.connect.west microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective.this.state.Properties{west:"none"} run scoreboard players set #place.connect.west microbuilder.calc 0

### update ###
function microbuilder:scene/api/get_neighbour_up
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"east"} run scoreboard players set #place.connect.east microbuilder.calc 0
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"east",neighbour:{property:{type:"wall"}}} run scoreboard players set #place.connect.east microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"east",neighbour:{property:{type:"pane"}}} run scoreboard players set #place.connect.east microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"east",neighbour:{state:{full:1b}}} run scoreboard players set #place.connect.east microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"north"} run scoreboard players set #place.connect.north microbuilder.calc 0
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"north",neighbour:{property:{type:"wall"}}} run scoreboard players set #place.connect.north microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"north",neighbour:{property:{type:"pane"}}} run scoreboard players set #place.connect.north microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"north",neighbour:{state:{full:1b}}} run scoreboard players set #place.connect.north microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"south"} run scoreboard players set #place.connect.south microbuilder.calc 0
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"south",neighbour:{property:{type:"wall"}}} run scoreboard players set #place.connect.south microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"south",neighbour:{property:{type:"pane"}}} run scoreboard players set #place.connect.south microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"south",neighbour:{state:{full:1b}}} run scoreboard players set #place.connect.south microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"west"} run scoreboard players set #place.connect.west microbuilder.calc 0
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"west",neighbour:{property:{type:"wall"}}} run scoreboard players set #place.connect.west microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"west",neighbour:{property:{type:"pane"}}} run scoreboard players set #place.connect.west microbuilder.calc 1
execute if data storage microbuilder:calc update_neighbours.perspective{direction:"west",neighbour:{state:{full:1b}}} run scoreboard players set #place.connect.west microbuilder.calc 1


execute if score #place.connect.east microbuilder.calc matches 1 if data storage microbuilder:calc neighbours.up.property{type:"wall"} unless data storage microbuilder:calc neighbours.up.state.Properties{east:"none"} run scoreboard players set #place.connect.east microbuilder.calc 2
execute if score #place.connect.north microbuilder.calc matches 1 if data storage microbuilder:calc neighbours.up.property{type:"wall"} unless data storage microbuilder:calc neighbours.up.state.Properties{north:"none"} run scoreboard players set #place.connect.north microbuilder.calc 2
execute if score #place.connect.south microbuilder.calc matches 1 if data storage microbuilder:calc neighbours.up.property{type:"wall"} unless data storage microbuilder:calc neighbours.up.state.Properties{south:"none"} run scoreboard players set #place.connect.south microbuilder.calc 2
execute if score #place.connect.west microbuilder.calc matches 1 if data storage microbuilder:calc neighbours.up.property{type:"wall"} unless data storage microbuilder:calc neighbours.up.state.Properties{west:"none"} run scoreboard players set #place.connect.west microbuilder.calc 2


scoreboard players set #place.connect.up microbuilder.calc 1
execute if score #place.connect.east microbuilder.calc matches 0 if score #place.connect.west microbuilder.calc matches 0 if score #place.connect.north microbuilder.calc matches 1 if score #place.connect.south microbuilder.calc matches 1 run scoreboard players set #place.connect.up microbuilder.calc 0
execute if score #place.connect.east microbuilder.calc matches 0 if score #place.connect.west microbuilder.calc matches 0 if score #place.connect.north microbuilder.calc matches 2 if score #place.connect.south microbuilder.calc matches 2 run scoreboard players set #place.connect.up microbuilder.calc 0
execute if score #place.connect.east microbuilder.calc matches 1 if score #place.connect.west microbuilder.calc matches 1 if score #place.connect.north microbuilder.calc matches 0 if score #place.connect.south microbuilder.calc matches 0 run scoreboard players set #place.connect.up microbuilder.calc 0
execute if score #place.connect.east microbuilder.calc matches 2 if score #place.connect.west microbuilder.calc matches 2 if score #place.connect.north microbuilder.calc matches 0 if score #place.connect.south microbuilder.calc matches 0 run scoreboard players set #place.connect.up microbuilder.calc 0
execute if score #place.connect.east microbuilder.calc matches 1 if score #place.connect.west microbuilder.calc matches 1 if score #place.connect.north microbuilder.calc matches 1 if score #place.connect.south microbuilder.calc matches 1 run scoreboard players set #place.connect.up microbuilder.calc 0
execute if score #place.connect.east microbuilder.calc matches 2 if score #place.connect.west microbuilder.calc matches 2 if score #place.connect.north microbuilder.calc matches 2 if score #place.connect.south microbuilder.calc matches 2 run scoreboard players set #place.connect.up microbuilder.calc 0

scoreboard players set #temp.op microbuilder.calc 3
scoreboard players operation #place.updated_state microbuilder.calc = #place.connect.east microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc += #place.connect.north microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc += #place.connect.south microbuilder.calc
scoreboard players set #temp.op microbuilder.calc 2
scoreboard players operation #place.updated_state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players add #place.connect.up microbuilder.calc 1
scoreboard players operation #place.connect.up microbuilder.calc %= #temp.op microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc += #place.connect.up microbuilder.calc
scoreboard players set #temp.op microbuilder.calc 3
scoreboard players operation #place.updated_state microbuilder.calc *= #temp.op microbuilder.calc
scoreboard players operation #place.updated_state microbuilder.calc += #place.connect.west microbuilder.calc