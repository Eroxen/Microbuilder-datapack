execute store result score y microbuilder.calc run data get entity @s Pos[1] 16
scoreboard players set op microbuilder.calc 16
scoreboard players operation y microbuilder.calc %= op microbuilder.calc

execute if predicate microbuilder:raycast/intersect_partial_y run tag @s add microbuilder.math.raycast.hit