scoreboard players set #place.state microbuilder.calc 0

scoreboard players set #place.connect microbuilder.calc 0
execute if data storage microbuilder:calc neighbours.east.property{type:"fence"} unless data storage microbuilder:calc neighbours.east.block{id:"minecraft:nether_brick_fence"} unless data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.east.block{id:"minecraft:nether_brick_fence"} if data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.east.state{full:1b} run scoreboard players set #place.connect microbuilder.calc 1
execute if score #place.connect microbuilder.calc matches 0 run scoreboard players add #place.state microbuilder.calc 8

scoreboard players set #place.connect microbuilder.calc 0
execute if data storage microbuilder:calc neighbours.north.property{type:"fence"} unless data storage microbuilder:calc neighbours.north.block{id:"minecraft:nether_brick_fence"} unless data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.north.block{id:"minecraft:nether_brick_fence"} if data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.north.state{full:1b} run scoreboard players set #place.connect microbuilder.calc 1
execute if score #place.connect microbuilder.calc matches 0 run scoreboard players add #place.state microbuilder.calc 4

scoreboard players set #place.connect microbuilder.calc 0
execute if data storage microbuilder:calc neighbours.south.property{type:"fence"} unless data storage microbuilder:calc neighbours.south.block{id:"minecraft:nether_brick_fence"} unless data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.south.block{id:"minecraft:nether_brick_fence"} if data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.south.state{full:1b} run scoreboard players set #place.connect microbuilder.calc 1
execute if score #place.connect microbuilder.calc matches 0 run scoreboard players add #place.state microbuilder.calc 2

scoreboard players set #place.connect microbuilder.calc 0
execute if data storage microbuilder:calc neighbours.west.property{type:"fence"} unless data storage microbuilder:calc neighbours.west.block{id:"minecraft:nether_brick_fence"} unless data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.west.block{id:"minecraft:nether_brick_fence"} if data storage microbuilder:registry block{id:"minecraft:nether_brick_fence"} run scoreboard players set #place.connect microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.west.state{full:1b} run scoreboard players set #place.connect microbuilder.calc 1
execute if score #place.connect microbuilder.calc matches 0 run scoreboard players add #place.state microbuilder.calc 1