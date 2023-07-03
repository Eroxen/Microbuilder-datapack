execute store success score bool microbuilder.calc if entity @s[tag=microbuilder.is_in_building_mode]
execute if score bool microbuilder.calc matches 1 run tag @s remove microbuilder.is_in_building_mode
execute if score bool microbuilder.calc matches 0 run tag @s add microbuilder.is_in_building_mode

function microbuilder:building_mode/players_changed

execute unless score @s microbuilder.message matches 0 run function microbuilder:message

scoreboard players reset @s microbuilder