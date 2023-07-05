data modify entity @s Pos set from storage ray2:api result.pos
execute if data storage ray2:api result.normal{axis:"x",sign:-1} at @s run tp @s ~0.005 ~ ~
execute if data storage ray2:api result.normal{axis:"x",sign:1} at @s run tp @s ~-0.005 ~ ~
execute if data storage ray2:api result.normal{axis:"y",sign:-1} at @s run tp @s ~ ~0.005 ~
execute if data storage ray2:api result.normal{axis:"y",sign:1} at @s run tp @s ~ ~-0.005 ~
execute if data storage ray2:api result.normal{axis:"z",sign:-1} at @s run tp @s ~ ~ ~0.005
execute if data storage ray2:api result.normal{axis:"z",sign:1} at @s run tp @s ~ ~ ~-0.005

data modify storage microbuilder:calc break.Pos set from entity @s Pos

execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:break/scene_manager_call
kill @s