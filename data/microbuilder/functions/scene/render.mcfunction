scoreboard players set x microbuilder.calc 0
scoreboard players set y microbuilder.calc 0
scoreboard players set z microbuilder.calc 0

data modify storage microbuilder:calc render.block_transform set value {scale:[0f,0f,0f],translation:[0f,0f,0f]}
scoreboard players set size microbuilder.calc 720
scoreboard players operation size microbuilder.calc /= scale microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[0] float 0.00138889 run scoreboard players get size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[1] float 0.00138889 run scoreboard players get size microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.scale[2] float 0.00138889 run scoreboard players get size microbuilder.calc
scoreboard players set render_offset microbuilder.calc 360
scoreboard players operation render_offset microbuilder.calc /= scale microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[0] float -0.00138889 run scoreboard players get render_offset microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[1] float -0.00138889 run scoreboard players get render_offset microbuilder.calc
execute store result storage microbuilder:calc render.block_transform.translation[2] float -0.00138889 run scoreboard players get render_offset microbuilder.calc
data modify storage microbuilder:calc render.scene set from storage microbuilder:calc scene
scoreboard players set view_range microbuilder.calc 900
scoreboard players operation view_range microbuilder.calc /= scale microbuilder.calc
scoreboard players add view_range microbuilder.calc 100

execute align x align y align z run summon marker ~ ~ ~ {Tags:["microbuilder.scene_renderer"]}
execute align x align y align z as @e[type=marker,tag=microbuilder.scene_renderer,distance=..0.1,limit=1] run function microbuilder:scene/render/marker