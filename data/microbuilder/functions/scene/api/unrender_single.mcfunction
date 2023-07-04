#####################################################################
# unrender_single.mcfunction
# kills the rendering entity at the specified position
# Scoreboard input:
# - x microbuilder.calc : x index
# - y microbuilder.calc : y index
# - z microbuilder.calc : z index
#####################################################################

scoreboard players set #100 microbuilder.calc 100
scoreboard players operation #render_pos microbuilder.calc = x microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc *= #100 microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc += y microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc *= #100 microbuilder.calc
scoreboard players operation #render_pos microbuilder.calc += z microbuilder.calc

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1] on passengers if score @s microbuilder.render_pos = #render_pos microbuilder.calc run kill @s