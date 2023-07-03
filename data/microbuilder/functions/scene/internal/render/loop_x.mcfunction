scoreboard players add #render_pos microbuilder.calc 10000
execute store result storage microbuilder:calc render.block_transform.translation[0] float 0.00138889 run scoreboard players get #x_pos microbuilder.calc

scoreboard players operation #y_pos microbuilder.calc = #y_base microbuilder.calc
execute if data storage microbuilder:calc render.scene[0][][].data run function microbuilder:scene/internal/render/loop_y

data remove storage microbuilder:calc render.scene[0]

scoreboard players operation #x_pos microbuilder.calc += #step_size microbuilder.calc


execute if score #x_pos microbuilder.calc < #x_max microbuilder.calc run function microbuilder:scene/internal/render/loop_x