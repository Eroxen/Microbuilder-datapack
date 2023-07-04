#####################################################################
# render_full.mcfunction
# Storage input:
# - microbuilder:calc scene : scene
# Scoreboard input:
# - scale microbuilder.calc : building scale
#####################################################################

scoreboard players set #step_size microbuilder.calc 720
scoreboard players operation #step_size microbuilder.calc /= scale microbuilder.calc

scoreboard players set #render_pos microbuilder.calc -10101
scoreboard players set #x_base microbuilder.calc -360
scoreboard players set #y_base microbuilder.calc -360
scoreboard players set #z_base microbuilder.calc -360
scoreboard players set #x_max microbuilder.calc 360
scoreboard players set #y_max microbuilder.calc 360
scoreboard players set #z_max microbuilder.calc 360
scoreboard players operation #x_pos microbuilder.calc = #x_base microbuilder.calc
scoreboard players operation #y_pos microbuilder.calc = #y_base microbuilder.calc
scoreboard players operation #z_pos microbuilder.calc = #z_base microbuilder.calc

data modify storage microbuilder:calc render.block_transform set value {scale:[0f,0f,0f],translation:[0f,0f,0f]}
execute store result storage microbuilder:calc render.block_transform.scale[0] float 0.00138889 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[1] float 0.00138889 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[2] float 0.00138889 run scoreboard players get #step_size microbuilder.calc
data modify storage microbuilder:calc render.scene set from storage microbuilder:calc scene

function microbuilder:scene/internal/render/ensure_root
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1,limit=1] run function microbuilder:scene/internal/render/render_full_on_root