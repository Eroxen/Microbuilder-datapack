#####################################################################
# get_neighbour_up.mcfunction
# written by Eroxen
#
# must be run at the targeted scene controller to properly get blocks from neighbouring controllers
#
# Scoreboard input:
# - scale microbuilder.calc : micro scene scale
#####################################################################

data modify storage microbuilder:calc get_neighbours set value {}
data modify storage microbuilder:calc get_neighbours.stack.scene_element set from storage microbuilder:calc scene_element
data modify storage microbuilder:calc get_neighbours.stack.block set from storage microbuilder:registry block
data modify storage microbuilder:calc get_neighbours.stack.property set from storage microbuilder:registry property
data modify storage microbuilder:calc get_neighbours.stack.state set from storage microbuilder:registry state
execute store result storage microbuilder:calc get_neighbours.stack.index int 1 run scoreboard players get #index microbuilder.calc
execute store result storage microbuilder:calc get_neighbours.stack.property_index int 1 run scoreboard players get #property_index microbuilder.calc
execute store result storage microbuilder:calc get_neighbours.stack.state_index int 1 run scoreboard players get #state_index microbuilder.calc
data modify storage microbuilder:calc neighbours set value {}

data remove storage microbuilder:calc scene_element
scoreboard players add y microbuilder.calc 1
execute if score y microbuilder.calc < scale microbuilder.calc run function microbuilder:scene/api/get_element
execute if score y microbuilder.calc >= scale microbuilder.calc run data modify storage microbuilder:calc get_neighbours.stack.scene set from storage microbuilder:calc scene
execute if score y microbuilder.calc >= scale microbuilder.calc positioned ~ ~1 ~ run function microbuilder:scene/internal/get_neighbours/overshoot
execute if score y microbuilder.calc >= scale microbuilder.calc run data modify storage microbuilder:calc scene set from storage microbuilder:calc get_neighbours.stack.scene
execute if data storage microbuilder:calc scene_element.state run function microbuilder:scene/internal/get_neighbours/get_neighbour_details
execute if data storage microbuilder:calc scene_element.state run data modify storage microbuilder:calc neighbours.up set from storage microbuilder:calc get_neighbours.neighbour

scoreboard players remove y microbuilder.calc 1

data modify storage microbuilder:calc scene_element set from storage microbuilder:calc get_neighbours.stack.scene_element
data modify storage microbuilder:registry block set from storage microbuilder:calc get_neighbours.stack.block
data modify storage microbuilder:registry property set from storage microbuilder:calc get_neighbours.stack.property
data modify storage microbuilder:registry state set from storage microbuilder:calc get_neighbours.stack.state
execute store result score #index microbuilder.calc run data get storage microbuilder:calc get_neighbours.stack.index
execute store result score #property_index microbuilder.calc run data get storage microbuilder:calc get_neighbours.stack.property_index
execute store result score #state_index microbuilder.calc run data get storage microbuilder:calc get_neighbours.stack.state_index