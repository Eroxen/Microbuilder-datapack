data modify storage microbuilder:calc render.element set from storage microbuilder:calc render.element.data
execute if data storage microbuilder:calc render.element{destroy:1b} run kill @e[tag=microbuilder.scene,distance=..0.01]
execute if data storage microbuilder:calc render.element.block_state run function microbuilder:scene/internal/render/type/block_state

tellraw @a {"nbt":"render.block_transform.translation","storage":"microbuilder:calc"}
tellraw @a {"score":{"name":"#render_pos","objective":"microbuilder.calc"}}