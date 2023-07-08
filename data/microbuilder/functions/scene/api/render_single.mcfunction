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

scoreboard players set #step_size microbuilder.calc 720720
scoreboard players operation #step_size microbuilder.calc /= scale microbuilder.calc

scoreboard players set view_range microbuilder.calc 1400
scoreboard players operation view_range microbuilder.calc /= scale microbuilder.calc
scoreboard players add view_range microbuilder.calc 300

scoreboard players set #x_base microbuilder.calc -360360
scoreboard players set #y_base microbuilder.calc -360360
scoreboard players set #z_base microbuilder.calc -360360
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
execute store result storage microbuilder:calc render.block_transform.scale[0] float 0.0000013875 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[1] float 0.0000013875 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[2] float 0.0000013875 run scoreboard players get #step_size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[0] float 0.0000013875 run scoreboard players get #x_pos microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[1] float 0.0000013875 run scoreboard players get #y_pos microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[2] float 0.0000013875 run scoreboard players get #z_pos microbuilder.calc

data modify storage microbuilder:calc render.element set from storage microbuilder:calc scene_element
scoreboard players set #render.exists microbuilder.calc 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1] on passengers if score @s microbuilder.render_pos = #render_pos microbuilder.calc run scoreboard players set #render.exists microbuilder.calc 1
execute if score #render.exists microbuilder.calc matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1] run function microbuilder:scene/internal/render/element
execute if score #render.exists microbuilder.calc matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1] run function microbuilder:scene/internal/render/update_element