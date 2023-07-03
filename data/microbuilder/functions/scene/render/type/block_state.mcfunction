kill @e[type=block_display,tag=microbuilder.scene,tag=!microbuilder.scene.block_state,distance=..0.01]
data modify storage microbuilder:calc EntityData set value {Tags:["microbuilder.scene","microbuilder.scene.block_state"],width:0.1,height:0.1}
data modify storage microbuilder:calc EntityData.Tags append from storage microbuilder:calc render.quad
data modify storage microbuilder:calc EntityData.block_state set from storage microbuilder:calc render.element.block_state
execute store result storage microbuilder:calc EntityData.view_range float 0.001 run scoreboard players get view_range microbuilder.calc
data modify storage microbuilder:calc EntityData.transformation set from storage microbuilder:calc render.block_transform

execute unless entity @e[type=block_display,tag=microbuilder.scene,tag=microbuilder.scene.block_state,distance=..0.01,limit=1] summon block_display run data modify entity @s {} merge from storage microbuilder:calc EntityData
execute if entity @e[type=block_display,tag=microbuilder.scene,tag=microbuilder.scene.block_state,distance=..0.01,limit=1] run data modify entity @e[type=block_display,tag=microbuilder.scene,tag=microbuilder.scene.block_state,distance=..0.01,limit=1] {} merge from storage microbuilder:calc EntityData