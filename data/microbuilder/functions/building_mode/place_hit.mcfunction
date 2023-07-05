data modify entity @s Pos set from storage ray2:api result.pos
execute if data storage ray2:api result.normal{axis:"x",sign:-1} at @s run tp @s ~-0.005 ~ ~
execute if data storage ray2:api result.normal{axis:"x",sign:1} at @s run tp @s ~0.005 ~ ~
execute if data storage ray2:api result.normal{axis:"y",sign:-1} at @s run tp @s ~ ~-0.005 ~
execute if data storage ray2:api result.normal{axis:"y",sign:1} at @s run tp @s ~ ~0.005 ~
execute if data storage ray2:api result.normal{axis:"z",sign:-1} at @s run tp @s ~ ~ ~-0.005
execute if data storage ray2:api result.normal{axis:"z",sign:1} at @s run tp @s ~ ~ ~0.005

execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1] run function microbuilder:place/new_scene_manager

data modify storage microbuilder:calc place.Pos set from entity @s Pos

data modify storage microbuilder:calc item_id set from storage microbuilder:calc place.Item.id
function microbuilder:registry/api/find_index_of_item
execute unless score #index microbuilder.calc matches 0.. run return 0

## scene element
data modify storage microbuilder:calc place.scene_element set value {state:[I;0,0]}
execute store result storage microbuilder:calc place.scene_element.state[0] int 1 run scoreboard players get #index microbuilder.calc

execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=microbuilder.scene_manager,distance=..0.1,limit=1] run function microbuilder:place/scene_manager_call
kill @s