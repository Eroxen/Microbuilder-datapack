execute store result score x microbuilder.calc run data get entity @s Pos[0] 16
execute store result score z microbuilder.calc run data get entity @s Pos[2] 16
scoreboard players set op microbuilder.calc 16
scoreboard players operation x microbuilder.calc %= op microbuilder.calc
scoreboard players operation z microbuilder.calc %= op microbuilder.calc

execute if predicate microbuilder:raycast/intersect_partial_xz run tag @s add microbuilder.math.raycast.hit