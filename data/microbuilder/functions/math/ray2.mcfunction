data modify storage microbuilder:calc math.ray2 set value {hit:0b,stop:0b,hit_info:{}}
scoreboard players set MAX_DISTANCE microbuilder.calc 5000

kill @e[type=marker,tag=microbuilder.math.raycast]
summon marker ^ ^ ^1 {Tags:["microbuilder.math.raycast"]}
data modify entity @e[type=marker,tag=microbuilder.math.raycast,limit=1,distance=..16] Rotation set from entity @s Rotation
execute positioned ^ ^ ^ as @e[type=marker,tag=microbuilder.math.raycast,limit=1,distance=..16] run function microbuilder:math/ray2/marker