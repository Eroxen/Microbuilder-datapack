scoreboard players add #render_pos microbuilder.calc 100
execute store result storage microbuilder:calc render.block_transform.translation[1] float 0.00138889 run scoreboard players get #y_pos microbuilder.calc

scoreboard players operation #z_pos microbuilder.calc = #z_base microbuilder.calc
execute if data storage microbuilder:calc render.scene[0][0][].state run function microbuilder:scene/internal/render/loop_z

data remove storage microbuilder:calc render.scene[0][0]

scoreboard players operation #y_pos microbuilder.calc += #step_size microbuilder.calc


execute if score #y_pos microbuilder.calc < #y_max microbuilder.calc run function microbuilder:scene/internal/render/loop_y
scoreboard players remove #render_pos microbuilder.calc 100