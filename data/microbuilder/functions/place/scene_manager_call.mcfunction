scoreboard players set op microbuilder.calc 1000
execute store result score scale microbuilder.calc run data get entity @s data.scale 1
execute store result score x microbuilder.calc run data get storage microbuilder:calc place.Pos[0] 1000
execute store result score y microbuilder.calc run data get storage microbuilder:calc place.Pos[1] 1000
execute store result score z microbuilder.calc run data get storage microbuilder:calc place.Pos[2] 1000
scoreboard players operation voxel_x microbuilder.calc = x microbuilder.calc
scoreboard players operation voxel_y microbuilder.calc = y microbuilder.calc
scoreboard players operation voxel_z microbuilder.calc = z microbuilder.calc
scoreboard players operation voxel_x microbuilder.calc *= scale microbuilder.calc
scoreboard players operation voxel_y microbuilder.calc *= scale microbuilder.calc
scoreboard players operation voxel_z microbuilder.calc *= scale microbuilder.calc
scoreboard players operation voxel_x microbuilder.calc %= op microbuilder.calc
scoreboard players operation voxel_y microbuilder.calc %= op microbuilder.calc
scoreboard players operation voxel_z microbuilder.calc %= op microbuilder.calc
scoreboard players operation x microbuilder.calc %= op microbuilder.calc
scoreboard players operation y microbuilder.calc %= op microbuilder.calc
scoreboard players operation z microbuilder.calc %= op microbuilder.calc
scoreboard players operation x microbuilder.calc *= scale microbuilder.calc
scoreboard players operation y microbuilder.calc *= scale microbuilder.calc
scoreboard players operation z microbuilder.calc *= scale microbuilder.calc
scoreboard players operation x microbuilder.calc /= op microbuilder.calc
scoreboard players operation y microbuilder.calc /= op microbuilder.calc
scoreboard players operation z microbuilder.calc /= op microbuilder.calc

execute if data storage microbuilder:calc place.further_processing run function microbuilder:place/further_processing

data modify storage microbuilder:calc scene set from entity @s data.scene
function microbuilder:scene/get_element

#tellraw @a [{"score":{"name":"x","objective":"microbuilder.calc"}},{"text":", "},{"score":{"name":"y","objective":"microbuilder.calc"}},{"text":", "},{"score":{"name":"z","objective":"microbuilder.calc"}},{"text":" contains: "},{"nbt":"scene_element","storage":"microbuilder:calc"}]

execute store result score contents microbuilder.calc run data get storage microbuilder:calc scene_element
execute if score contents microbuilder.calc matches 0 run function microbuilder:place/scene_manager_place