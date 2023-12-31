## glass bottle
execute if data storage microbuilder:calc special.Item{id:"minecraft:glass_bottle"} align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run tellraw @s {"text":"There is no scene to pick up here."}
execute if data storage microbuilder:calc special.Item{id:"minecraft:glass_bottle"} align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:special/pick_up_scene

## scene in a bottle
execute if data storage microbuilder:calc special.Item.tag.microbuilder{scene_in_a_bottle:1b} align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run tellraw @s {"text":"There is already a scene placed here."}
execute if data storage microbuilder:calc special.Item.tag.microbuilder{scene_in_a_bottle:1b} align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:special/place_picked_up_scene