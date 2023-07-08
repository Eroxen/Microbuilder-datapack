execute store result score #index microbuilder.calc run data get storage microbuilder:calc scene_element.state[0]
function microbuilder:registry/api/get_block_at_index
execute store result score #property_index microbuilder.calc run data get storage microbuilder:registry block.properties
function microbuilder:registry/api/get_properties_at_index
execute store result score #state_index microbuilder.calc run data get storage microbuilder:calc scene_element.state[1]
function microbuilder:registry/api/get_state_at_index

data modify storage microbuilder:calc get_neighbours.neighbour set value {}
data modify storage microbuilder:calc get_neighbours.neighbour.element set from storage microbuilder:calc scene_element
data modify storage microbuilder:calc get_neighbours.neighbour.block set from storage microbuilder:registry block
data modify storage microbuilder:calc get_neighbours.neighbour.property.type set from storage microbuilder:registry property.type
data modify storage microbuilder:calc get_neighbours.neighbour.property.properties set from storage microbuilder:registry property.properties
data modify storage microbuilder:calc get_neighbours.neighbour.state set from storage microbuilder:registry state