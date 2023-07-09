data modify entity @s Pos set from storage ray2:api result.pos

scoreboard players set #invert microbuilder.calc 0
execute if data storage microbuilder:calc special.Item.tag.microbuilder{scene_in_a_bottle:1b} run scoreboard players set #invert microbuilder.calc 1
execute if score #invert microbuilder.calc matches 1 store result storage ray2:api result.normal.sign int -1 run data get storage ray2:api result.normal.sign
execute if data storage ray2:api result.normal{axis:"x",sign:-1} at @s run tp @s ~0.002 ~ ~
execute if data storage ray2:api result.normal{axis:"x",sign:1} at @s run tp @s ~-0.002 ~ ~
execute if data storage ray2:api result.normal{axis:"y",sign:-1} at @s run tp @s ~ ~0.002 ~
execute if data storage ray2:api result.normal{axis:"y",sign:1} at @s run tp @s ~ ~-0.002 ~
execute if data storage ray2:api result.normal{axis:"z",sign:-1} at @s run tp @s ~ ~ ~0.002
execute if data storage ray2:api result.normal{axis:"z",sign:1} at @s run tp @s ~ ~ ~-0.002
execute if score #invert microbuilder.calc matches 1 store result storage ray2:api result.normal.sign int -1 run data get storage ray2:api result.normal.sign

data modify storage microbuilder:calc special.Pos set from entity @s Pos

execute at @s as @p[tag=microbuilder.special_item_caster] run function microbuilder:building_mode/special_item

kill @s