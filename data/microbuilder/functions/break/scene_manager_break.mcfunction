scoreboard players set kill microbuilder.calc 0

data modify storage microbuilder:calc scene_element set value {}
function microbuilder:scene/api/set_element
execute unless data storage microbuilder:calc scene[][][].state run scoreboard players set kill microbuilder.calc 1
data modify entity @s data.scene set from storage microbuilder:calc scene
data modify storage microbuilder:calc break.success set value 1b

function microbuilder:scene/api/unrender_single

function microbuilder:scene/api/get_all_neighbours
scoreboard players set #break.neighbour_needs_update microbuilder.calc 0
execute if data storage microbuilder:calc neighbours.north.property.properties{subscribe_updates:["south"]} run scoreboard players set #break.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.east.property.properties{subscribe_updates:["west"]} run scoreboard players set #break.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.south.property.properties{subscribe_updates:["north"]} run scoreboard players set #break.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.west.property.properties{subscribe_updates:["east"]} run scoreboard players set #break.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.up.property.properties{subscribe_updates:["down"]} run scoreboard players set #break.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.down.property.properties{subscribe_updates:["up"]} run scoreboard players set #break.neighbour_needs_update microbuilder.calc 1
execute if score #break.neighbour_needs_update microbuilder.calc matches 1 run function microbuilder:break/update_neighbours

execute if score kill microbuilder.calc matches 1 run function microbuilder:scene/api/kill