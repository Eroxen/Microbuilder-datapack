#####################################################################
# render_single.mcfunction
# Storage input:
# - microbuilder:calc scene_element : scene element to render
# Scoreboard input:
# - scale microbuilder.calc : building scale
# - x microbuilder.calc : x index
# - y microbuilder.calc : y index
# - z microbuilder.calc : z index
#####################################################################

function microbuilder:scene/internal/render/ensure_root

scoreboard players set #100 microbuilder.calc 100
scoreboard players operation #render_pos microbuilder.calc = x microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc *= #100 microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc += y microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc *= #100 microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc += z microbuilder.calc

scoreboard players set #step_size microbuilder.calc 720
scoreboard players operation #step_size microbuilder.calc /= scale microbuilder.calc

scoreboard players set #x_base microbuilder.calc -360
scoreboard players set #y_base microbuilder.calc -360
scoreboard players set #z_base microbuilder.calc -360
scoreboard players operation #x_pos microbuilder.calc = x microbuilder.calc
scoreboard players operation #y_pos microbuilder.calc = y microbuilder.calc
scoreboard players operation #z_pos microbuilder.calc = z microbuilder.calc
scoreboard players operation #x_pos microbuilder.calc *= #step_size microbuilder.calc
scoreboard players operation #y_pos microbuilder.calc *= #step_size microbuilder.calc
scoreboard players operation #z_pos microbuilder.calc *= #step_size microbuilder.calc
scoreboard players operation #x_pos microbuilder.calc += #x_base microbuilder.calc
scoreboard players operation #y_pos microbuilder.calc += #y_base microbuilder.calc
scoreboard players operation #z_pos microbuilder.calc += #z_base microbuilder.calc

data modify storage microbuilder:calc render.block_transform set value {scale:[0f,0f,0f],translation:[0f,0f,0f]}
execute store result storage microbuilder:calc render.block_transform.scale[0] float 0.00138889 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[1] float 0.00138889 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[2] float 0.00138889 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[0] float 0.00138889 run scoreboard players get #x_pos microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[1] float 0.00138889 run scoreboard players get #y_pos microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[2] float 0.00138889 run scoreboard players get #z_pos microbuilder.calc

data modify storage microbuilder:calc render.element set from storage microbuilder:calc scene_element
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1] run function microbuilder:scene/internal/render/element