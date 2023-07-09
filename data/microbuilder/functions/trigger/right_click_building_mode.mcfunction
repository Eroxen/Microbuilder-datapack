advancement revoke @s only microbuilder:trigger/right_click_building_mode
execute unless score @s microbuilder.scale matches 2..16 run scoreboard players set @s microbuilder.scale 4

execute unless entity @s[tag=microbuilder.is_in_building_mode] run return 0
execute if data entity @s SelectedItem unless predicate microbuilder:holding_supported_item unless predicate microbuilder:holding_special_item run tellraw @s {"text":"This item is not supported by Microbuilder."}
execute if data entity @s SelectedItem unless predicate microbuilder:holding_supported_item unless predicate microbuilder:holding_special_item run return 0

execute if predicate microbuilder:holding_special_item run function microbuilder:building_mode/special_item_cast
execute if predicate microbuilder:holding_supported_item run function microbuilder:building_mode/place_cast
