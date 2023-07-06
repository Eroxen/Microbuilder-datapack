execute store result score #index microbuilder.calc run data get storage microbuilder:calc render.element.state[0]
function microbuilder:registry/api/get_block_at_index
execute store result score #property_index microbuilder.calc run data get storage microbuilder:registry block.properties
function microbuilder:registry/api/get_properties_at_index
execute store result score #state_index microbuilder.calc run data get storage microbuilder:calc render.element.state[1]
function microbuilder:registry/api/get_state_at_index

execute summon block_display run function microbuilder:scene/internal/render/type/block_state

#tellraw @a {"nbt":"render.element","storage":"microbuilder:calc"}
#tellraw @a {"score":{"name":"#render_pos","objective":"microbuilder.calc"}}