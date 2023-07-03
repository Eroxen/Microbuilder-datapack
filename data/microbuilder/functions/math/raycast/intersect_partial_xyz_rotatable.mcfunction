execute store result score x microbuilder.calc run data get entity @s Pos[0] 16
execute store result score y microbuilder.calc run data get entity @s Pos[1] 16
execute store result score z microbuilder.calc run data get entity @s Pos[2] 16
scoreboard players set op microbuilder.calc 16
scoreboard players operation x microbuilder.calc %= op microbuilder.calc
scoreboard players operation y microbuilder.calc %= op microbuilder.calc
scoreboard players operation z microbuilder.calc %= op microbuilder.calc

execute if block ~ ~ ~ #microbuilder:raycast/partial_xyz_rotatable[facing=east] run function microbuilder:math/raycast/rotate/east
execute if block ~ ~ ~ #microbuilder:raycast/partial_xyz_rotatable[facing=south] run function microbuilder:math/raycast/rotate/south
execute if block ~ ~ ~ #microbuilder:raycast/partial_xyz_rotatable[facing=west] run function microbuilder:math/raycast/rotate/west

execute if predicate microbuilder:raycast/intersect_partial_xyz_rotatable run tag @s add microbuilder.math.raycast.hit
execute if block ~ ~ ~ #minecraft:stairs if predicate microbuilder:raycast/intersect_stairs run tag @s add microbuilder.math.raycast.hit