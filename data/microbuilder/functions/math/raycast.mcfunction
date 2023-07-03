tellraw @a {"text":"DEPRECATED","color":"red"}

# input: storage microbuilder:calc {math:{raycast:{Rotation:[0.0f,0.0f],distance:50}}}
# optional: report_hit_face:1b, ignore_glass:1b

scoreboard players set math.raycast.ignore_glass microbuilder.calc 0
execute if data storage microbuilder:calc math.raycast{ignore_glass:1b} run scoreboard players set math.raycast.ignore_glass microbuilder.calc 1
scoreboard players set math.raycast.target_fluids microbuilder.calc 0
execute if data storage microbuilder:calc math.raycast{target_fluids:1b} run scoreboard players set math.raycast.target_fluids microbuilder.calc 1

kill @e[type=marker,tag=microbuilder.math.raycast]
summon marker ~ ~ ~ {Tags:["microbuilder.math.raycast"]}
summon marker ~ ~ ~ {Tags:["microbuilder.math.raycast.current_block"]}
data modify entity @e[type=marker,tag=microbuilder.math.raycast,distance=..0.1,limit=1] Rotation set from storage microbuilder:calc math.raycast.Rotation
execute store result score ray_i microbuilder.calc run data get storage microbuilder:calc math.raycast.distance 1

execute as @e[type=marker,tag=microbuilder.math.raycast,distance=..0.1,limit=1] at @s rotated as @s run function microbuilder:math/raycast/loop
kill @e[type=marker,tag=microbuilder.math.raycast.current_block]