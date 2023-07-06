scoreboard players operation #index microbuilder.calc = #place.new_block_id microbuilder.calc
function microbuilder:registry/api/get_block_at_index
execute store result score #sound microbuilder.calc run data get storage microbuilder:registry block.place_sound
execute store result score #property_index microbuilder.calc run data get storage microbuilder:registry block.properties
function microbuilder:registry/api/get_properties_at_index

scoreboard players set #place.new_block_state microbuilder.calc -1
execute if data storage microbuilder:registry property{type:"slab"} run function microbuilder:place/get_state/slab/add

execute unless score #place.new_block_state microbuilder.calc matches 0.. run return 0
scoreboard players set #place.can_place microbuilder.calc 1
data modify storage microbuilder:calc place.scene_element set value {state:[I;0,0]}
execute store result storage microbuilder:calc place.scene_element.state[0] int 1 run scoreboard players get #place.new_block_id microbuilder.calc
execute store result storage microbuilder:calc place.scene_element.state[1] int 1 run scoreboard players get #place.new_block_state microbuilder.calc