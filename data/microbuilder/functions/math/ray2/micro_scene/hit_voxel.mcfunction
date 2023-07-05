execute store result score #index microbuilder.calc run data get storage microbuilder:calc scene_element.state[0]
function microbuilder:registry/api/get_block_at_index
execute store result score #property_index microbuilder.calc run data get storage microbuilder:registry block.properties
function microbuilder:registry/api/get_properties_at_index
execute store result score #state_index microbuilder.calc run data get storage microbuilder:calc scene_element.state[1]
function microbuilder:registry/api/get_state_at_index


execute if data storage microbuilder:registry state{full:1b} run function microbuilder:math/ray2/hit/micro_scene/hit_full_voxel
execute if data storage microbuilder:registry state.partial run function microbuilder:math/ray2/hit/micro_scene/hit_partial_voxel