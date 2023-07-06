scoreboard players set op microbuilder.calc 1000
execute store result score scale microbuilder.calc run data get entity @s data.scale 1
execute store result score x microbuilder.calc run data get storage microbuilder:calc break.Pos[0] 1000
execute store result score y microbuilder.calc run data get storage microbuilder:calc break.Pos[1] 1000
execute store result score z microbuilder.calc run data get storage microbuilder:calc break.Pos[2] 1000
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
function microbuilder:scene/get_element

data modify storage microbuilder:calc break.Item set value {id:"minecraft:air",Count:1b}
execute store result score #index microbuilder.calc run data get storage microbuilder:calc scene_element.state[0]
execute store result score #state_index microbuilder.calc run data get storage microbuilder:calc scene_element.state[1]
function microbuilder:registry/api/get_block_at_index
execute store result score #sound microbuilder.calc run data get storage microbuilder:registry block.break_sound
execute store result score #property_index microbuilder.calc run data get storage microbuilder:registry block.properties
function microbuilder:registry/api/get_properties_at_index
function microbuilder:registry/api/get_state_at_index
data modify storage microbuilder:calc break.Item.id set from storage microbuilder:registry block.item
execute if data storage microbuilder:registry state.drop_count run data modify storage microbuilder:calc break.Item.Count set from storage microbuilder:registry state.drop_count

execute if data storage microbuilder:calc scene_element.state run function microbuilder:break/scene_manager_break