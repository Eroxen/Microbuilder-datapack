scoreboard players add #render_pos microbuilder.calc 1
execute store result storage microbuilder:calc render.block_transform.translation[2] float 0.0000013875 run scoreboard players get #z_pos microbuilder.calc

data modify storage microbuilder:calc render.element set from storage microbuilder:calc render.scene[0][0][0]
execute if data storage microbuilder:calc render.scene[0][0][0].state run function microbuilder:scene/internal/render/element

data remove storage microbuilder:calc render.scene[0][0][0]

scoreboard players operation #z_pos microbuilder.calc += #step_size microbuilder.calc


execute if score #z_pos microbuilder.calc < #z_max microbuilder.calc run function microbuilder:scene/internal/render/loop_z
scoreboard players remove #render_pos microbuilder.calc 1