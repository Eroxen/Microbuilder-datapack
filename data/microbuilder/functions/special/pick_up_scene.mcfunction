data modify storage microbuilder:calc special.pick_up_scene set value {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Scene in a Bottle","italic":false}'},CustomPotionColor:8781799,microbuilder:{scene_in_a_bottle:1b,data:{}}}}}
execute as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:special/pick_up_scene_manager
particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 4
playsound minecraft:entity.item_frame.remove_item block @a[distance=..16] ~ ~ ~ 1 1
data modify storage microbuilder:calc special.pick_up_scene.Item.tag.microbuilder.data set from storage microbuilder:calc special.pick_up_scene.data


data modify storage microbuilder:calc Item set from storage microbuilder:calc special.pick_up_scene.Item
execute if predicate microbuilder:survival_or_adventure if data storage microbuilder:calc special.Item{Count:1b} run item replace entity @s weapon.mainhand with minecraft:potion
execute if predicate microbuilder:survival_or_adventure if data storage microbuilder:calc special.Item{Count:1b} run item modify entity @s weapon.mainhand microbuilder:nbt
execute if predicate microbuilder:survival_or_adventure unless data storage microbuilder:calc special.Item{Count:1b} run function microbuilder:item/decrement_mainhand
execute if predicate microbuilder:survival_or_adventure unless data storage microbuilder:calc special.Item{Count:1b} run function microbuilder:item/give

execute unless predicate microbuilder:survival_or_adventure run function microbuilder:item/give