advancement revoke @s only microbuilder:trigger/right_click_building_mode
execute unless score @s microbuilder.scale matches 2..16 run scoreboard players set @s microbuilder.scale 4

execute unless entity @s[tag=microbuilder.is_in_building_mode] run return 0
execute unless predicate microbuilder:holding_supported_item run tellraw @s {"text":"This item is not supported by Microbuilder."}
execute unless predicate microbuilder:holding_supported_item run return 0

function microbuilder:building_mode/place_cast
