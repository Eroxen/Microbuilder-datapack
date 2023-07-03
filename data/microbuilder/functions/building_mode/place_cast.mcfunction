execute anchored eyes positioned ^ ^ ^ run function microbuilder:math/ray2

execute if data storage microbuilder:calc math.ray2{hit:1b,hit_info:{face_normal:{x:-1}}} at @e[type=marker,distance=..16,tag=microbuilder.math.raycast,limit=1] positioned ~-0.005 ~ ~ run function microbuilder:building_mode/place
execute if data storage microbuilder:calc math.ray2{hit:1b,hit_info:{face_normal:{x:1}}} at @e[type=marker,distance=..16,tag=microbuilder.math.raycast,limit=1] positioned ~0.005 ~ ~ run function microbuilder:building_mode/place
execute if data storage microbuilder:calc math.ray2{hit:1b,hit_info:{face_normal:{y:-1}}} at @e[type=marker,distance=..16,tag=microbuilder.math.raycast,limit=1] positioned ~ ~-0.005 ~ run function microbuilder:building_mode/place
execute if data storage microbuilder:calc math.ray2{hit:1b,hit_info:{face_normal:{y:1}}} at @e[type=marker,distance=..16,tag=microbuilder.math.raycast,limit=1] positioned ~ ~0.005 ~ run function microbuilder:building_mode/place
execute if data storage microbuilder:calc math.ray2{hit:1b,hit_info:{face_normal:{z:-1}}} at @e[type=marker,distance=..16,tag=microbuilder.math.raycast,limit=1] positioned ~ ~ ~-0.005 run function microbuilder:building_mode/place
execute if data storage microbuilder:calc math.ray2{hit:1b,hit_info:{face_normal:{z:1}}} at @e[type=marker,distance=..16,tag=microbuilder.math.raycast,limit=1] positioned ~ ~ ~0.005 run function microbuilder:building_mode/place

kill @e[type=marker,distance=..128,tag=microbuilder.math.raycast]