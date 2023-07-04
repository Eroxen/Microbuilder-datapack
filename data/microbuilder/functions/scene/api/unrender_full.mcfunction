#####################################################################
# unrender_full.mcfunction
# kills all scene rendering entities in the block
#####################################################################

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1] on passengers run kill @s
execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1]