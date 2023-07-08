data modify storage microbuilder:calc scene_element set from storage microbuilder:calc place.scene_element
function microbuilder:scene/api/set_element
data modify entity @s data.scene set from storage microbuilder:calc scene
data modify storage microbuilder:calc place.success set value 1b
function microbuilder:scene/api/render_single

scoreboard players set #place.neighbour_needs_update microbuilder.calc 0
execute if data storage microbuilder:calc neighbours.north.property.properties{subscribe_updates:["south"]} run scoreboard players set #place.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.east.property.properties{subscribe_updates:["west"]} run scoreboard players set #place.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.south.property.properties{subscribe_updates:["north"]} run scoreboard players set #place.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.west.property.properties{subscribe_updates:["east"]} run scoreboard players set #place.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.up.property.properties{subscribe_updates:["down"]} run scoreboard players set #place.neighbour_needs_update microbuilder.calc 1
execute if data storage microbuilder:calc neighbours.down.property.properties{subscribe_updates:["up"]} run scoreboard players set #place.neighbour_needs_update microbuilder.calc 1
execute if score #place.neighbour_needs_update microbuilder.calc matches 1 run function microbuilder:place/update_neighbours