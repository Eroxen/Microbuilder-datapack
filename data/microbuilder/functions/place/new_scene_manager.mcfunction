execute align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["microbuilder.scene_manager","microbuilder.scene_manager.new"]}


scoreboard players operation scale microbuilder.calc = @s microbuilder.scale
execute align x align y align z positioned ~0.5 ~0.5 ~0.5 store result entity @e[type=marker,tag=microbuilder.scene_manager.new,distance=..0.1,limit=1] data.scale int 1 run scoreboard players get scale microbuilder.calc

function microbuilder:scene/create_empty_scene
execute align x align y align z positioned ~0.5 ~0.5 ~0.5 run data modify entity @e[type=marker,tag=microbuilder.scene_manager.new,distance=..0.1,limit=1] data.scene set from storage microbuilder:calc scene


execute align x align y align z positioned ~0.5 ~0.5 ~0.5 run tag @e[type=marker,tag=microbuilder.scene_manager.new,distance=..0.1] remove microbuilder.scene_manager.new