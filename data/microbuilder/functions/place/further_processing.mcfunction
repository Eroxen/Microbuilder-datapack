execute if data storage microbuilder:calc place{further_processing:"slab"} if score voxel_y microbuilder.calc matches ..500 run data modify storage microbuilder:calc place.scene_element.block_state.Properties set value {type:"bottom"}
execute if data storage microbuilder:calc place{further_processing:"slab"} if score voxel_y microbuilder.calc matches 500.. run data modify storage microbuilder:calc place.scene_element.block_state.Properties set value {type:"top"}

execute if data storage microbuilder:calc place{further_processing:"stairs"} if score voxel_y microbuilder.calc matches ..500 run data modify storage microbuilder:calc place.scene_element.block_state.Properties.half set value "bottom"
execute if data storage microbuilder:calc place{further_processing:"stairs"} if score voxel_y microbuilder.calc matches 500.. run data modify storage microbuilder:calc place.scene_element.block_state.Properties.half set value "top"