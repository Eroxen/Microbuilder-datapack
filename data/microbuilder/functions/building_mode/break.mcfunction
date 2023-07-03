execute if data storage microbuilder:calc math.ray2.hit_info.face_normal{x:-1} at @s run tp @s ~0.005 ~ ~
execute if data storage microbuilder:calc math.ray2.hit_info.face_normal{x:1} at @s run tp @s ~-0.005 ~ ~
execute if data storage microbuilder:calc math.ray2.hit_info.face_normal{y:-1} at @s run tp @s ~ ~0.005 ~
execute if data storage microbuilder:calc math.ray2.hit_info.face_normal{y:1} at @s run tp @s ~ ~-0.005 ~
execute if data storage microbuilder:calc math.ray2.hit_info.face_normal{z:-1} at @s run tp @s ~ ~ ~0.005
execute if data storage microbuilder:calc math.ray2.hit_info.face_normal{z:1} at @s run tp @s ~ ~ ~-0.005
data modify storage microbuilder:calc break.Pos set from entity @s Pos

execute at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:break/scene_manager_call

execute if data storage microbuilder:calc break{success:1b} run playsound minecraft:block.stone.break block @a[distance=..16] ~ ~ ~ 1 1