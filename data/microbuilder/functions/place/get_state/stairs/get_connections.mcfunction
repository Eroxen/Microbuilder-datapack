scoreboard players set #place.stairs.connect_back microbuilder.calc 0

data modify storage microbuilder:calc stair_neighbours set from storage microbuilder:calc neighbours
execute if data storage microbuilder:calc stair_neighbours.north unless data storage microbuilder:calc stair_neighbours.north.property{type:"stairs"} run data remove storage microbuilder:calc stair_neighbours.north
execute if data storage microbuilder:calc stair_neighbours.east unless data storage microbuilder:calc stair_neighbours.east.property{type:"stairs"} run data remove storage microbuilder:calc stair_neighbours.east
execute if data storage microbuilder:calc stair_neighbours.south unless data storage microbuilder:calc stair_neighbours.south.property{type:"stairs"} run data remove storage microbuilder:calc stair_neighbours.south
execute if data storage microbuilder:calc stair_neighbours.west unless data storage microbuilder:calc stair_neighbours.west.property{type:"stairs"} run data remove storage microbuilder:calc stair_neighbours.west
execute if score #place.stairs.half microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.north.state.Properties{half:"top"} run data remove storage microbuilder:calc stair_neighbours.north
execute if score #place.stairs.half microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.east.state.Properties{half:"top"} run data remove storage microbuilder:calc stair_neighbours.east
execute if score #place.stairs.half microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.south.state.Properties{half:"top"} run data remove storage microbuilder:calc stair_neighbours.south
execute if score #place.stairs.half microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.west.state.Properties{half:"top"} run data remove storage microbuilder:calc stair_neighbours.west
execute if score #place.stairs.half microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.north.state.Properties{half:"bottom"} run data remove storage microbuilder:calc stair_neighbours.north
execute if score #place.stairs.half microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.east.state.Properties{half:"bottom"} run data remove storage microbuilder:calc stair_neighbours.east
execute if score #place.stairs.half microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.south.state.Properties{half:"bottom"} run data remove storage microbuilder:calc stair_neighbours.south
execute if score #place.stairs.half microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.west.state.Properties{half:"bottom"} run data remove storage microbuilder:calc stair_neighbours.west


execute if score #place.stairs.facing microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.north{state:{Properties:{facing:"west"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 1
execute if score #place.stairs.facing microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.north{state:{Properties:{facing:"east"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 3
execute if score #place.stairs.facing microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.east{state:{Properties:{facing:"north"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 1
execute if score #place.stairs.facing microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.east{state:{Properties:{facing:"south"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 3
execute if score #place.stairs.facing microbuilder.calc matches 2 if data storage microbuilder:calc stair_neighbours.south{state:{Properties:{facing:"east"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 1
execute if score #place.stairs.facing microbuilder.calc matches 2 if data storage microbuilder:calc stair_neighbours.south{state:{Properties:{facing:"west"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 3
execute if score #place.stairs.facing microbuilder.calc matches 3 if data storage microbuilder:calc stair_neighbours.west{state:{Properties:{facing:"south"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 1
execute if score #place.stairs.facing microbuilder.calc matches 3 if data storage microbuilder:calc stair_neighbours.west{state:{Properties:{facing:"north"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 3

execute if score #place.stairs.facing microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.south{state:{Properties:{facing:"west"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 4
execute if score #place.stairs.facing microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.south{state:{Properties:{facing:"east"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 2
execute if score #place.stairs.facing microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.west{state:{Properties:{facing:"north"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 4
execute if score #place.stairs.facing microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.west{state:{Properties:{facing:"south"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 2
execute if score #place.stairs.facing microbuilder.calc matches 2 if data storage microbuilder:calc stair_neighbours.north{state:{Properties:{facing:"east"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 4
execute if score #place.stairs.facing microbuilder.calc matches 2 if data storage microbuilder:calc stair_neighbours.north{state:{Properties:{facing:"west"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 2
execute if score #place.stairs.facing microbuilder.calc matches 3 if data storage microbuilder:calc stair_neighbours.east{state:{Properties:{facing:"south"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 4
execute if score #place.stairs.facing microbuilder.calc matches 3 if data storage microbuilder:calc stair_neighbours.east{state:{Properties:{facing:"north"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 2

execute if score #place.stairs.connect_back microbuilder.calc matches 1..2 if score #place.stairs.facing microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.east{state:{Properties:{facing:"north"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 3..4 if score #place.stairs.facing microbuilder.calc matches 0 if data storage microbuilder:calc stair_neighbours.west{state:{Properties:{facing:"north"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 1..2 if score #place.stairs.facing microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.south{state:{Properties:{facing:"east"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 3..4 if score #place.stairs.facing microbuilder.calc matches 1 if data storage microbuilder:calc stair_neighbours.north{state:{Properties:{facing:"east"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 1..2 if score #place.stairs.facing microbuilder.calc matches 2 if data storage microbuilder:calc stair_neighbours.west{state:{Properties:{facing:"south"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 3..4 if score #place.stairs.facing microbuilder.calc matches 2 if data storage microbuilder:calc stair_neighbours.east{state:{Properties:{facing:"south"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 1..2 if score #place.stairs.facing microbuilder.calc matches 3 if data storage microbuilder:calc stair_neighbours.north{state:{Properties:{facing:"west"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 3..4 if score #place.stairs.facing microbuilder.calc matches 3 if data storage microbuilder:calc stair_neighbours.south{state:{Properties:{facing:"west"}}} run scoreboard players set #place.stairs.connect_back microbuilder.calc 0

scoreboard players set #place.stairs.shape microbuilder.calc 0
execute if score #place.stairs.connect_back microbuilder.calc matches 1 run scoreboard players set #place.stairs.shape microbuilder.calc 3
execute if score #place.stairs.connect_back microbuilder.calc matches 3 run scoreboard players set #place.stairs.shape microbuilder.calc 4
execute if score #place.stairs.connect_back microbuilder.calc matches 2 run scoreboard players set #place.stairs.shape microbuilder.calc 2
execute if score #place.stairs.connect_back microbuilder.calc matches 4 run scoreboard players set #place.stairs.shape microbuilder.calc 1