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

data modify storage microbuilder:calc scene set from entity @s data.scene
function microbuilder:scene/api/get_element

# block already present
execute if data storage microbuilder:calc scene_element.state store result score #place.current_block_id microbuilder.calc run data get storage microbuilder:calc scene_element.state[0]
execute if data storage microbuilder:calc scene_element.state store result score #place.current_block_state microbuilder.calc run data get storage microbuilder:calc scene_element.state[1]
execute if data storage microbuilder:calc scene_element.state unless score #place.new_block_id microbuilder.calc = #place.current_block_id microbuilder.calc run return 0

function microbuilder:scene/api/get_all_neighbours
scoreboard players set #place.can_place microbuilder.calc 0
execute if data storage microbuilder:calc scene_element.state run function microbuilder:place/get_state_add
execute unless data storage microbuilder:calc scene_element.state run function microbuilder:place/get_state

execute if score #place.can_place microbuilder.calc matches 1 run function microbuilder:place/scene_manager_place