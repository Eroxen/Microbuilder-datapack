data modify storage microbuilder:calc EntityData set value {Tags:["microbuilder.scene_manager"]}
data modify storage microbuilder:calc EntityData.data set from storage microbuilder:calc special.Item.tag.microbuilder.data
execute summon marker run data modify entity @s {} merge from storage microbuilder:calc EntityData
data modify storage microbuilder:calc scene set from storage microbuilder:calc EntityData.data.scene
execute store result score scale microbuilder.calc run data get storage microbuilder:calc EntityData.data.scale 1
execute as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:scene/render

execute if predicate microbuilder:consume_items run item replace entity @s weapon.mainhand with minecraft:glass_bottle

particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 4
playsound minecraft:entity.item_frame.add_item block @a[distance=..16] ~ ~ ~ 1 1