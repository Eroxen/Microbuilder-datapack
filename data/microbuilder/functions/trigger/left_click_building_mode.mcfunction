execute unless score @s microbuilder.scale matches 2..16 run scoreboard players set @s microbuilder.scale 4

execute if entity @s[tag=microbuilder.is_in_building_mode] run function microbuilder:building_mode/break_cast
advancement revoke @s only microbuilder:trigger/left_click_building_mode