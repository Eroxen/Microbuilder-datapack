data modify storage microbuilder:calc EntityData set value {Tags:["microbuilder.scene","microbuilder.scene.block_state"],width:0.1,height:0.1,block_state:{Name:"minecraft:air"}}
data modify storage microbuilder:calc EntityData.block_state.Name set from storage microbuilder:registry block.id
execute store result storage microbuilder:calc EntityData.view_range float 0.001 run scoreboard players get view_range microbuilder.calc
data modify storage microbuilder:calc EntityData.transformation set from storage microbuilder:calc render.block_transform

data modify entity @s {} merge from storage microbuilder:calc EntityData
scoreboard players operation @s microbuilder.render_pos = #render_pos microbuilder.calc
ride @s mount @e[type=item_display,tag=microbuilder.scene_renderer.root,distance=..0.1,limit=1]