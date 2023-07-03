tp @e[type=marker,tag=microbuilder.math.raycast.current_block,distance=..5,limit=1] ~ ~ ~

scoreboard players set old_scene_x microbuilder.calc -1
scoreboard players set old_scene_y microbuilder.calc -1
scoreboard players set old_scene_z microbuilder.calc -1


data modify storage microbuilder:calc math.raycast.current_block set value {has_micro_scene:0b}
execute positioned ~0.5 ~0.5 ~0.5 if entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run data modify storage microbuilder:calc math.raycast.current_block.has_micro_scene set value 1b
execute if data storage microbuilder:calc math.raycast.current_block{has_micro_scene:1b} positioned ~0.5 ~0.5 ~0.5 run data modify storage microbuilder:calc math.raycast.current_block.micro_scene.scene set from entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] data.scene
execute if data storage microbuilder:calc math.raycast.current_block{has_micro_scene:1b} positioned ~0.5 ~0.5 ~0.5 run data modify storage microbuilder:calc math.raycast.current_block.micro_scene.scale set from entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] data.scale
execute if data storage microbuilder:calc math.raycast.current_block{has_micro_scene:1b} store result score scale microbuilder.calc run data get storage microbuilder:calc math.raycast.current_block.micro_scene.scale 1
