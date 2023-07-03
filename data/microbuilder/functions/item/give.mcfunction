execute at @s run summon item ~ ~ ~ {Tags:["microbuilder.new_item"],Item:{id:"minecraft:stone",Count:1b}}
execute at @s run data modify entity @e[type=item,tag=microbuilder.new_item,distance=..1,limit=1] Item set from storage microbuilder:calc Item
execute at @s run execute if entity @s[type=player] run data modify entity @e[type=item,tag=microbuilder.new_item,distance=..1,limit=1] Owner set from entity @s UUID
execute at @s run tag @e[type=item,tag=microbuilder.new_item,distance=..1] remove microbuilder.new_item