execute store result score #index microbuilder.calc run data get storage microbuilder:calc render.element.state[0]
function microbuilder:registry/api/get_block_at_index
execute store result score #property_index microbuilder.calc run data get storage microbuilder:registry block.properties
function microbuilder:registry/api/get_properties_at_index
execute store result score #state_index microbuilder.calc run data get storage microbuilder:calc render.element.state[1]
function microbuilder:registry/api/get_state_at_index

scoreboard players set #render.display_type microbuilder.calc -1
execute on passengers if score @s microbuilder.render_pos = #render_pos microbuilder.calc if entity @s[type=minecraft:block_display] run scoreboard players set #render.display_type microbuilder.calc 1

execute unless score #render.display_type microbuilder.calc matches 1 on passengers if score @s microbuilder.render_pos = #render_pos microbuilder.calc run kill @s
execute unless score #render.display_type microbuilder.calc matches 1 summon block_display run function microbuilder:scene/internal/render/type/block_state
execute if score #render.display_type microbuilder.calc matches 1 on passengers if score @s microbuilder.render_pos = #render_pos microbuilder.calc run function microbuilder:scene/internal/render/type/block_state