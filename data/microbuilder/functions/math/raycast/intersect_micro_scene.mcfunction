execute store result score x microbuilder.calc run data get entity @s Pos[0] 720
execute store result score y microbuilder.calc run data get entity @s Pos[1] 720
execute store result score z microbuilder.calc run data get entity @s Pos[2] 720
scoreboard players set op microbuilder.calc 720
scoreboard players operation x microbuilder.calc %= op microbuilder.calc
scoreboard players operation y microbuilder.calc %= op microbuilder.calc
scoreboard players operation z microbuilder.calc %= op microbuilder.calc
scoreboard players operation x microbuilder.calc *= scale microbuilder.calc
scoreboard players operation y microbuilder.calc *= scale microbuilder.calc
scoreboard players operation z microbuilder.calc *= scale microbuilder.calc
scoreboard players operation x microbuilder.calc /= op microbuilder.calc
scoreboard players operation y microbuilder.calc /= op microbuilder.calc
scoreboard players operation z microbuilder.calc /= op microbuilder.calc

scoreboard players set bool microbuilder.calc 0
execute if score x microbuilder.calc = old_scene_x microbuilder.calc if score y microbuilder.calc = old_scene_y microbuilder.calc if score z microbuilder.calc = old_scene_z microbuilder.calc run scoreboard players set bool microbuilder.calc 1
execute if score bool microbuilder.calc matches 0 run function microbuilder:math/raycast/enter_new_voxel

execute if data storage microbuilder:calc math.raycast.current_voxel{ignore:0b} run tag @s add microbuilder.math.raycast.hit