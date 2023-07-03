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

execute store result score contents microbuilder.calc run data get storage microbuilder:calc scene_element
data remove storage microbuilder:calc break.Item
execute if data storage microbuilder:calc scene_element.Item run data modify storage microbuilder:calc break.Item set from storage microbuilder:calc scene_element.Item
execute if score contents microbuilder.calc matches 1.. run function microbuilder:break/scene_manager_break