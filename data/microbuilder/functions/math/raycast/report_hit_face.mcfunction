### most likely based on rotation ###
data modify storage microbuilder:calc math.raycast.hit_face set value "up"
execute if entity @s[x_rotation=-90..-45] run data modify storage microbuilder:calc math.raycast.hit_face set value "down"
execute if entity @s[y_rotation=-45..45,x_rotation=-45..45] run data modify storage microbuilder:calc math.raycast.hit_face set value "north"
execute if entity @s[y_rotation=45..135,x_rotation=-45..45] run data modify storage microbuilder:calc math.raycast.hit_face set value "east"
execute if entity @s[y_rotation=135..225,x_rotation=-45..45] run data modify storage microbuilder:calc math.raycast.hit_face set value "south"
execute if entity @s[y_rotation=225..315,x_rotation=-45..45] run data modify storage microbuilder:calc math.raycast.hit_face set value "west"

summon marker ~ ~ ~ {Tags:["microbuilder.math.raycast_report_hit_face"]}

tp @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] ~-0.04 ~ ~
execute as @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] at @s run function microbuilder:math/raycast/intersect_hit_face
execute if entity @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] run data modify storage microbuilder:calc math.raycast.hit_face set value "east"
tag @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] remove microbuilder.math.raycast.hit

tp @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] ~0.04 ~ ~
execute as @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] at @s run function microbuilder:math/raycast/intersect_hit_face
execute if entity @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] run data modify storage microbuilder:calc math.raycast.hit_face set value "west"
tag @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] remove microbuilder.math.raycast.hit

tp @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] ~ ~-0.04 ~
execute as @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] at @s run function microbuilder:math/raycast/intersect_hit_face
execute if entity @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] run data modify storage microbuilder:calc math.raycast.hit_face set value "up"
tag @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] remove microbuilder.math.raycast.hit

tp @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] ~ ~0.04 ~
execute as @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] at @s run function microbuilder:math/raycast/intersect_hit_face
execute if entity @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] run data modify storage microbuilder:calc math.raycast.hit_face set value "down"
tag @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] remove microbuilder.math.raycast.hit

tp @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] ~ ~ ~-0.04
execute as @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] at @s run function microbuilder:math/raycast/intersect_hit_face
execute if entity @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] run data modify storage microbuilder:calc math.raycast.hit_face set value "south"
tag @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] remove microbuilder.math.raycast.hit

tp @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] ~ ~ ~0.04
execute as @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,limit=1] at @s run function microbuilder:math/raycast/intersect_hit_face
execute if entity @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] run data modify storage microbuilder:calc math.raycast.hit_face set value "north"
tag @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1,tag=microbuilder.math.raycast.hit] remove microbuilder.math.raycast.hit

kill @e[type=marker,tag=microbuilder.math.raycast_report_hit_face,distance=..0.1]