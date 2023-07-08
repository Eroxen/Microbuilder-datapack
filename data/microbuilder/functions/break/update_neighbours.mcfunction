data modify storage microbuilder:calc update_neighbours set value {}
data modify storage microbuilder:calc update_neighbours.stack.scene_element set from storage microbuilder:calc scene_element
data modify storage microbuilder:calc update_neighbours.stack.block set from storage microbuilder:registry block
data modify storage microbuilder:calc update_neighbours.stack.property set from storage microbuilder:registry property
data modify storage microbuilder:calc update_neighbours.stack.state set from storage microbuilder:registry state
execute store result storage microbuilder:calc update_neighbours.stack.index int 1 run scoreboard players get #index microbuilder.calc
execute store result storage microbuilder:calc update_neighbours.stack.property_index int 1 run scoreboard players get #property_index microbuilder.calc
execute store result storage microbuilder:calc update_neighbours.stack.state_index int 1 run scoreboard players get #state_index microbuilder.calc

data modify storage microbuilder:calc update_neighbours.this set value {broken:1b}
data modify storage microbuilder:calc update_neighbours.this.was.block set from storage microbuilder:registry block
data modify storage microbuilder:calc update_neighbours.this.was.element set from storage microbuilder:calc scene_element
data modify storage microbuilder:calc update_neighbours.this.was.property.type set from storage microbuilder:registry property.type
data modify storage microbuilder:calc update_neighbours.this.was.property.properties set from storage microbuilder:registry property.properties
data modify storage microbuilder:calc update_neighbours.this.was.state set from storage microbuilder:registry state

execute store result score #break.update_neighbour microbuilder.calc if data storage microbuilder:calc neighbours.east.property.properties{subscribe_updates:["west"]}
scoreboard players add x microbuilder.calc 1
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective set value {direction:"west"}
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective.this set from storage microbuilder:calc neighbours.east
execute if score #break.update_neighbour microbuilder.calc matches 1 if score x microbuilder.calc < scale microbuilder.calc run function microbuilder:break/update_neighbours/update
execute if score #break.update_neighbour microbuilder.calc matches 1 if score x microbuilder.calc >= scale microbuilder.calc positioned ~1 ~ ~ run function microbuilder:break/update_neighbours/overshoot


execute store result score #break.update_neighbour microbuilder.calc if data storage microbuilder:calc neighbours.west.property.properties{subscribe_updates:["east"]}
scoreboard players remove x microbuilder.calc 2
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective set value {direction:"east"}
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective.this set from storage microbuilder:calc neighbours.west
execute if score #break.update_neighbour microbuilder.calc matches 1 if score x microbuilder.calc matches 0.. run function microbuilder:break/update_neighbours/update
execute if score #break.update_neighbour microbuilder.calc matches 1 if score x microbuilder.calc matches ..-1 positioned ~-1 ~ ~ run function microbuilder:break/update_neighbours/overshoot

scoreboard players add x microbuilder.calc 1


execute store result score #break.update_neighbour microbuilder.calc if data storage microbuilder:calc neighbours.up.property.properties{subscribe_updates:["down"]}
scoreboard players add y microbuilder.calc 1
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective set value {direction:"down"}
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective.this set from storage microbuilder:calc neighbours.up
execute if score #break.update_neighbour microbuilder.calc matches 1 if score y microbuilder.calc < scale microbuilder.calc run function microbuilder:break/update_neighbours/update
execute if score #break.update_neighbour microbuilder.calc matches 1 if score y microbuilder.calc >= scale microbuilder.calc positioned ~ ~1 ~ run function microbuilder:break/update_neighbours/overshoot

execute store result score #break.update_neighbour microbuilder.calc if data storage microbuilder:calc neighbours.down.property.properties{subscribe_updates:["up"]}
scoreboard players remove y microbuilder.calc 2
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective set value {direction:"up"}
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective.this set from storage microbuilder:calc neighbours.down
execute if score #break.update_neighbour microbuilder.calc matches 1 if score y microbuilder.calc matches 0.. run function microbuilder:break/update_neighbours/update
execute if score #break.update_neighbour microbuilder.calc matches 1 if score y microbuilder.calc matches ..-1 positioned ~ ~-1 ~ run function microbuilder:break/update_neighbours/overshoot

scoreboard players add y microbuilder.calc 1


execute store result score #break.update_neighbour microbuilder.calc if data storage microbuilder:calc neighbours.south.property.properties{subscribe_updates:["north"]}
scoreboard players add z microbuilder.calc 1
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective set value {direction:"north"}
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective.this set from storage microbuilder:calc neighbours.south
execute if score #break.update_neighbour microbuilder.calc matches 1 if score z microbuilder.calc < scale microbuilder.calc run function microbuilder:break/update_neighbours/update
execute if score #break.update_neighbour microbuilder.calc matches 1 if score z microbuilder.calc >= scale microbuilder.calc positioned ~ ~ ~1 run function microbuilder:break/update_neighbours/overshoot

execute store result score #break.update_neighbour microbuilder.calc if data storage microbuilder:calc neighbours.north.property.properties{subscribe_updates:["south"]}
scoreboard players remove z microbuilder.calc 2
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective set value {direction:"south"}
execute if score #break.update_neighbour microbuilder.calc matches 1 run data modify storage microbuilder:calc update_neighbours.perspective.this set from storage microbuilder:calc neighbours.north
execute if score #break.update_neighbour microbuilder.calc matches 1 if score z microbuilder.calc matches 0.. run function microbuilder:break/update_neighbours/update
execute if score #break.update_neighbour microbuilder.calc matches 1 if score z microbuilder.calc matches ..-1 positioned ~ ~ ~-1 run function microbuilder:break/update_neighbours/overshoot

scoreboard players add z microbuilder.calc 1

data modify storage microbuilder:calc scene_element set from storage microbuilder:calc update_neighbours.stack.scene_element
data modify storage microbuilder:registry block set from storage microbuilder:calc update_neighbours.stack.block
data modify storage microbuilder:registry property set from storage microbuilder:calc update_neighbours.stack.property
data modify storage microbuilder:registry state set from storage microbuilder:calc update_neighbours.stack.state
execute store result score #index microbuilder.calc run data get storage microbuilder:calc update_neighbours.stack.index
execute store result score #property_index microbuilder.calc run data get storage microbuilder:calc update_neighbours.stack.property_index
execute store result score #state_index microbuilder.calc run data get storage microbuilder:calc update_neighbours.stack.state_index