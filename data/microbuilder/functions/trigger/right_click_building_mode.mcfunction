execute unless score @s microbuilder.scale matches 2..16 run scoreboard players set @s microbuilder.scale 4

execute if entity @s[tag=microbuilder.is_in_building_mode] unless predicate microbuilder:holding_supported_item unless predicate microbuilder:holding_special_item run tellraw @s {"text":"This item is not supported by Microbuilder."}
execute if entity @s[tag=microbuilder.is_in_building_mode] if predicate microbuilder:holding_supported_item unless predicate microbuilder:holding_special_item run function microbuilder:building_mode/place_cast
execute if entity @s[tag=microbuilder.is_in_building_mode] if predicate microbuilder:holding_special_item run function microbuilder:building_mode/special_item_cast
advancement revoke @s only microbuilder:trigger/right_click_building_mode